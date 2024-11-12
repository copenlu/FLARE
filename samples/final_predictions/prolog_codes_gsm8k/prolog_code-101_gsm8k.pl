% Define the total number of cars on the motorway
total_cars(30).
% Define the number of cars that took an exit
cars_exit(5).
% Calculate the number of cars that drove through in the second interval
cars_second_interval(SecondInterval) :-
total_cars(Total),
cars_exit(Exit),
SecondInterval is Total - Exit.
% Calculate the number of cars that drove through in the first 15 minutes
cars_first_15_minutes(First15Minutes) :-
total_cars(Total),
cars_second_interval(SecondInterval),
First15Minutes is Total - SecondInterval.
% Query to find the number of cars that drove through in the first 15 minutes
query(First15Minutes) :-
cars_first_15_minutes(First15Minutes).
% Uncomment the following line to run the query and calculate the number of cars that drove through in the first 15 minutes
% ?- query(First15Minutes).
%query(First15Minutes).