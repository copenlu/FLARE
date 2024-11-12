% Define the time taken to string racquets with synthetic gut
time_for_synthetic_gut(3, Time) :- Time is 3 * 15.
% Define the time taken to string racquets with polyester string
time_for_polyester(5, Time) :- Time is 5 * 22.
% Define the time taken to string racquets with a hybrid set
time_for_hybrid_set(4, Time) :- Time is 4 * 18.
% Define the total time taken to string all racquets
total_time_to_string_all_racquets(TotalTime) :-
time_for_synthetic_gut(3, TimeSyntheticGut),
time_for_polyester(5, TimePolyester),
time_for_hybrid_set(4, TimeHybrid),
TotalTime is TimeSyntheticGut + TimePolyester + TimeHybrid.
% Predicate to encapsulate the entire calculation and output the total time taken
calculate_total_time(TotalTime) :-
total_time_to_string_all_racquets(TotalTime).
% Query to find the total time taken to string all racquets
query(TotalTime) :-
calculate_total_time(TotalTime).
% Uncomment the following line to run the query
% ?- query(TotalTime).
%query(TotalTime).