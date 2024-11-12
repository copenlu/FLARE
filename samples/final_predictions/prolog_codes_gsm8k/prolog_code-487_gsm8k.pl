% Define the total walking time needed
total_walking_time(240).
% Calculate the daily walking time required
calculate_daily_walking_time(DailyWalkingTime) :-
total_walking_time(TotalWalkingTime),
TotalDays is 4 * 3, % Jason walks 4 days a week for 3 weeks
DailyWalkingTime is TotalWalkingTime / TotalDays.
% Query to calculate how long Jason needs to spend walking each day
query(DailyWalkingTime) :-
calculate_daily_walking_time(DailyWalkingTime).
% Uncomment the following line to run the query and calculate the daily walking time
% ?- query(DailyWalkingTime).
%query(DailyWalkingTime).