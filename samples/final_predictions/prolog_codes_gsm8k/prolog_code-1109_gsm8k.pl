% Define the predicate to calculate the time taken to reach the store
time_to_reach_store(Time) :-
DistanceToStore is 2, % Half the distance to the store
Speed is 4, % Speed in miles per hour
TimeToStore is DistanceToStore / Speed, % Time taken to reach the store
TimeBackHome is TimeToStore, % Same time taken to walk back home
Time is TimeToStore + TimeBackHome. % Total time taken to reach the store
% Query to find the total time taken to reach the store
query_time_to_reach_store(Time) :-
time_to_reach_store(Time).
% Define a predicate that returns the correct numerical answer when queried
query(Time) :-
query_time_to_reach_store(Time).
% Uncomment the following line to run the query
% ?- query(Time).
%query(Time).