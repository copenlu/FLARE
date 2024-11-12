% Define the daily rate for tutoring
daily_rate(12).
% Define the number of days in a week
days_in_week(7).
% Define a rule to calculate the total cost for a given daily rate and number of weeks
total_cost(DailyRate, NumberOfWeeks, TotalCost) :-
days_in_week(DaysInWeek),
TotalDays is NumberOfWeeks * DaysInWeek,
TotalCost is DailyRate * TotalDays.
% Define a query predicate to find the total cost for 2 weeks of tutoring
query(TotalCost) :-
daily_rate(DailyRate),
total_cost(DailyRate, 2, TotalCost).
% Uncomment the line below to run the query
% query(TotalCost).
%query(TotalCost).