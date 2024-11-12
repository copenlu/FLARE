% Define the predicate to calculate total earnings per week
earnings_per_week(EarningsPerDay, DaysPerWeek, TotalEarningsPerWeek) :-
TotalEarningsPerWeek is EarningsPerDay * DaysPerWeek.
% Define the predicate to calculate the number of weeks needed to save the total savings goal
weeks_to_save(TotalSavingsGoal, TotalEarningsPerWeek, Weeks) :-
Weeks is TotalSavingsGoal / TotalEarningsPerWeek.
% Define the values for John's earnings per day, days worked per week, and total savings goal
% Assumed values based on the given information
earnings_per_day(2).  % John earns $2 per hour
days_per_week(4).  % John works 4 days a week
total_savings_goal(80).  % John wants to save $80
% Query predicate to run the program and get the result
query(Weeks) :-
earnings_per_day(EarningsPerDay),
days_per_week(DaysPerWeek),
total_savings_goal(TotalSavingsGoal),
earnings_per_week(EarningsPerDay, DaysPerWeek, TotalEarningsPerWeek),
weeks_to_save(TotalSavingsGoal, TotalEarningsPerWeek, Weeks).
% Uncomment the following line to run the query
% ?- query(Weeks).
%query(Weeks).