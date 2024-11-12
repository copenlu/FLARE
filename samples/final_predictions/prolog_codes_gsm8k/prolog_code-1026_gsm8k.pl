% Define time required for each step
time_required(making_batter, 20).
time_required(baking, 30).
time_required(cooling, 120).
time_required(frosting, 10).
% Calculate the latest start time to make the cake
latest_start_time(LatestStartHour, LatestStartMinute) :-
time_required(making_batter, MakingBatterTime),
time_required(baking, BakingTime),
time_required(cooling, CoolingTime),
time_required(frosting, FrostingTime),
TotalTime is MakingBatterTime + BakingTime + CoolingTime + FrostingTime,
TotalMinutes is 17 * 60, % 5:00 pm in minutes
LatestStartMinutes is TotalMinutes - TotalTime,
LatestStartHour is LatestStartMinutes // 60,
LatestStartMinute is LatestStartMinutes mod 60.
% Query predicate to find the latest time Jordan can start making the cake
query(LatestStartHour, LatestStartMinute) :-
latest_start_time(LatestStartHour, LatestStartMinute).
% Uncomment the line below to run the query
% query(LatestStartHour, LatestStartMinute).
%query(LatestStartHour, LatestStartMinute).