% Define the rule to calculate the time it will take for Tom to catch up with Bob
time_to_catch_up(DistanceAhead, TomSpeed, BobSpeed, Time) :-
RelativeSpeed is TomSpeed - BobSpeed,  % Calculate the relative speed at which Tom is closing the gap
Time is DistanceAhead / RelativeSpeed.  % Calculate the time it will take for Tom to catch up with Bob
% Query to find the time it will take for Tom to catch up with Bob
query_time_to_catch_up(Time) :-
time_to_catch_up(75, 70, 55, Time).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_time_to_catch_up(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).