% Define the time_taken predicate which calculates the time taken for a given distance and speed
time_taken(Distance, Speed, Time) :-
Time is Distance / Speed.
% Define the total_trip_time predicate to calculate the total time for the entire trip
total_trip_time(TotalTime) :-
time_taken(210, 70, OutboundTime),  % Time taken for outbound trip (200 miles + 10 miles detour at 70 mph)
time_taken(240, 80, ReturnTime),  % Time taken for return trip (240 miles at 80 mph)
TotalTime is OutboundTime + ReturnTime.
% Query predicate to run the program and get the result
query(TotalTime) :-
total_trip_time(TotalTime).
% Uncomment the following line to run the query
% ?- query(TotalTime).
%query(TotalTime).