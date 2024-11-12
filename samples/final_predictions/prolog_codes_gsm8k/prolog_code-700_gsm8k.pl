% Define the time taken in turtle mode (1 hour)
time_taken(turtle, 60).
% Define the time taken in rabbit mode (40 minutes)
time_taken(rabbit, 40).
% Convert hours to minutes
hours_to_minutes(Hours, Minutes) :-
Minutes is Hours * 60.
% Calculate the total time taken to mow the lawn
total_time_taken(TotalTime) :-
time_taken(turtle, TurtleTime),
time_taken(rabbit, RabbitTime),
hours_to_minutes(1, TurtleTimeInMinutes),
TotalTime is TurtleTimeInMinutes + RabbitTime.
% Query to calculate the total time taken to mow the lawn
query(TotalTime) :-
total_time_taken(TotalTime).
% Uncomment the following line to run the query and calculate the total time taken
% ?- query(TotalTime).
%query(TotalTime).