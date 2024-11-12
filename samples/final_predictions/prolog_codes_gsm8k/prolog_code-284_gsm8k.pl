% Define the time it takes to dig a small hole and a large hole
time_to_dig(small, 3).  % 3 minutes for a small hole
time_to_dig(large, 10).  % 10 minutes for a large hole
% Predicate to calculate the total time to dig a certain number of small and large holes
% Params: TotalTime
total_time_to_dig(TotalTime) :-
NumSmallHoles = 30,
NumLargeHoles = 15,
time_to_dig(small, TimeSmall),
time_to_dig(large, TimeLarge),
TotalTime is (NumSmallHoles * TimeSmall + NumLargeHoles * TimeLarge) / 60.  % Convert total time to hours
% Query predicate to get the total time to dig all holes
query(TotalTime) :-
total_time_to_dig(TotalTime).
% Uncomment the following line to run the query
% query(TotalTime).
%query(TotalTime).