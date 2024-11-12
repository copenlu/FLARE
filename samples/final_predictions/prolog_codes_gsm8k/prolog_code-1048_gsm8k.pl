% Define daily sandwich consumption for each family member
sandwiches_per_day(man, 5).
sandwiches_per_day(wife, 4).
sandwiches_per_day(son, 2).
% Calculate total sandwiches consumed per day
total_sandwiches_per_day(Total) :-
sandwiches_per_day(man, ManSandwiches),
sandwiches_per_day(wife, WifeSandwiches),
sandwiches_per_day(son, SonSandwiches),
Total is ManSandwiches + WifeSandwiches + SonSandwiches.
% Calculate total sandwiches consumed in one week
total_sandwiches_per_week(TotalWeek) :-
total_sandwiches_per_day(DailyTotal),
TotalWeek is DailyTotal * 7.
% Query predicate to find the total sandwiches consumed in one week
query(TotalWeek) :-
total_sandwiches_per_week(TotalWeek).
% Uncomment the line below to run the query
% query(TotalWeek).
%query(TotalWeek).