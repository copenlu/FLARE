% Define the total distance traveled
total_distance(Distance1, Distance2, TotalDistance) :-
TotalDistance is Distance1 + Distance2.
% Define the total time taken
total_time(Time1, Time2, TotalTime) :-
TotalTime is Time1 + Time2.
% Define the average speed calculation
average_speed(TotalDistance, TotalTime, AverageSpeed) :-
AverageSpeed is TotalDistance / TotalTime.
% Given distances and times
Distance1 = 110,
Distance2 = 140,
Time1 = 2,
Time2 = 3,
% Calculate the total distance and total time
total_distance(Distance1, Distance2, TotalDistance),
total_time(Time1, Time2, TotalTime),
% Calculate the average speed
average_speed(TotalDistance, TotalTime, AverageSpeed).
% Query predicate to get the average speed
query(AverageSpeed) :-
average_speed(TotalDistance, TotalTime, AverageSpeed).
% Uncomment the following line to run the query
% query(AverageSpeed).
%query(AverageSpeed).