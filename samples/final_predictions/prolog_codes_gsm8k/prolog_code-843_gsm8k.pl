% Define the number of cycles John does per day
cycles_per_day(30).
% Define the number of tasks in each cycle
tasks_per_cycle(5).
% Define the earnings per task
earnings_per_task(1.20).
% Calculate the total number of tasks completed by John in a day
tasks_per_day(TasksPerDay) :-
cycles_per_day(Cycles),
tasks_per_cycle(TasksPerCycle),
TasksPerDay is Cycles * TasksPerCycle.
% Calculate John's total earnings in a day
total_earnings_per_day(TotalEarnings) :-
tasks_per_day(TasksPerDay),
earnings_per_task(EarningsPerTask),
TotalEarnings is TasksPerDay * EarningsPerTask.
% Calculate John's total earnings in a week
total_earnings_per_week(TotalEarningsWeek) :-
total_earnings_per_day(TotalEarningsDay),
TotalEarningsWeek is TotalEarningsDay * 7.
% Query predicate to find John's total earnings in a week
query(TotalEarningsWeek) :-
total_earnings_per_week(TotalEarningsWeek).
% Uncomment the line below to run the query
% query(TotalEarningsWeek).
%query(TotalEarningsWeek).