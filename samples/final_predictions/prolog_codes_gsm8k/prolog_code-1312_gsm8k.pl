% Define the rule for calculating Anna's time to complete the puzzle
anna_time(SteveTime, AnnaTime) :-
HalfSteveTime is SteveTime / 2,
AnnaTime is HalfSteveTime + 2.
% Define a predicate to execute the specific query with given values
query(AnnaTime) :-
% Steve took 10 hours to complete the puzzle
anna_time(10, AnnaTime).
% Uncomment the line below to run the query
% ?- query(AnnaTime).
%query(AnnaTime).