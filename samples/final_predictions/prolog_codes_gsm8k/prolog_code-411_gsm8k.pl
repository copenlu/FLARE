% Define the rule to calculate the total days worked in a year
total_days_worked(TotalDays) :-
TotalDays is 4 * 6 * 12. % 4 weeks * 6 days * 12 months
% Define the rule to calculate the total earnings for the year
total_earnings(TotalDays, Earnings) :-
Earnings is TotalDays * 50. % $50 per day
% Query to find the total earnings for the year
query_total_earnings(Earnings) :-
total_days_worked(TotalDays),
total_earnings(TotalDays, Earnings).
% Uncomment the following line to run the query
% ?- query_total_earnings(Earnings).
% ?- query_total_earnings(Earnings).