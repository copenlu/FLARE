% Define the rule for calculating the total time to cross the lake
time_to_cross_lake(TotalTime) :-
DistanceSwam is 0.6 * 20,  % Distance swam initially (60% of 20 miles)
TimeSwimmingInitial is DistanceSwam / 2,  % Time taken to swim initial distance at 2 miles per hour
TimeResting is TimeSwimmingInitial / 2,  % Time spent resting on the island (half the swimming time)
RemainingDistance is 0.4 * 20,  % Remaining distance to be covered
TimeSwimmingRemaining is RemainingDistance / 1,  % Time taken to cover remaining distance at half the speed
TotalTime is TimeSwimmingInitial + TimeResting + TimeSwimmingRemaining.  % Total time taken to cross the lake
% Predicate to encapsulate the entire calculation and output the total time
calculate_total_time(TotalTime) :-
time_to_cross_lake(TotalTime).
% Query to find the total time James took to cross the lake
query(TotalTime) :-
calculate_total_time(TotalTime).
% Uncomment the following line to run the query
% ?- query(TotalTime).
%query(TotalTime).