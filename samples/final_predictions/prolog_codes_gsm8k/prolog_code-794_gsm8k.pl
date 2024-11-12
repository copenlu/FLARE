% Define the rule to calculate the number of wheels left after assembling the toys
calculate_wheels_left(CarCount, MotorcycleCount, TotalWheels, WheelsLeft) :-
CarWheelsNeeded is CarCount * 4,               % Calculate the total number of wheels needed for cars
MotorcycleWheelsNeeded is MotorcycleCount * 2, % Calculate the total number of wheels needed for motorcycles
TotalWheelsNeeded is CarWheelsNeeded + MotorcycleWheelsNeeded, % Calculate total wheels needed
WheelsLeft is TotalWheels - TotalWheelsNeeded. % Calculate the number of wheels left
% Query to find the number of wheels left after assembling the toys
query_wheels_left(WheelsLeft) :-
calculate_wheels_left(57, 73, 650, WheelsLeft). % Given values: 57 cars, 73 motorcycles, 650 total wheels
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_wheels_left(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).