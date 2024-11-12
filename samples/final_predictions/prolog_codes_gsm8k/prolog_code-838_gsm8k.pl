% Define the rule to calculate the number of cars Joe remains with
calculate_cars(RobertCars, JoeRemaining) :-
JoeInitial is 2 * RobertCars,  % Joe has twice as many cars as Robert
CarsSold is 0.20 * JoeInitial, % Joe sells 20% of his cars
CarsGivenToMother is 2 * CarsSold, % Joe gives away twice the number he sold
JoeRemaining is JoeInitial - CarsSold - CarsGivenToMother. % Calculate remaining cars
% Query the rule with Robert having 20 cars
query(JoeRemaining) :-
calculate_cars(20, JoeRemaining).
% Uncomment the following line to run the query and calculate the number of cars Joe remains with
% ?- query(JoeRemaining).
%query(JoeRemaining).