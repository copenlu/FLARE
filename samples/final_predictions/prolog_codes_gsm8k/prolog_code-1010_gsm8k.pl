% Define Edgar's daily consumption
edgar_daily_consumption(18).
% Calculate Edgar's brother's weekly consumption
calculate_weekly_consumption(BrotherWeeklyConsumption) :-
edgar_daily_consumption(EdgarDailyConsumption),
BrotherDailyConsumption is EdgarDailyConsumption / 2,
BrotherWeeklyConsumption is BrotherDailyConsumption * 7.
% Query predicate to find out how many pretzels Edgar's brother eats in a week
query(BrotherWeeklyConsumption) :-
calculate_weekly_consumption(BrotherWeeklyConsumption).
% Uncomment the line below to run the query
% query(BrotherWeeklyConsumption).
%query(BrotherWeeklyConsumption).