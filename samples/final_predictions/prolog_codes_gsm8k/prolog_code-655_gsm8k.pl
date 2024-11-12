% Define the rule to calculate the time it will take to dig the hole
digging_time(Length, Width, Depth, ShovelingRate, Time) :-
Volume is Length * Width * Depth,    % Calculate the volume of the hole
Time is Volume * ShovelingRate.      % Calculate the time it will take to dig the hole
% Query to find the time it will take Bob to dig the hole
query_digging_time(Time) :-
digging_time(6, 4, 3, 3, Time).  % Given dimensions and shoveling rate
% Define a predicate that returns the correct numerical answer when queried
query(Time) :-
query_digging_time(Time).
% Uncomment the following line to run the query
% ?- query(Time).
%query(Time).