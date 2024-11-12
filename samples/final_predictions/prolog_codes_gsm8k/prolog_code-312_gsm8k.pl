% Define the daily_earnings predicate to calculate Watson's daily earnings
daily_earnings(DailyEarnings) :-
DailyEarnings is 10 * 10.  % $10 per hour for a 10-hour shift
% Define the weekly_earnings predicate to calculate Watson's weekly earnings with bonus
weekly_earnings(WeeklyEarnings) :-
daily_earnings(DailyEarnings),  % Get daily earnings
WeeklyEarnings is DailyEarnings * 5 + 300.  % Multiply daily earnings by workdays and add bonus
% Define the total_earnings_april predicate to calculate Watson's total earnings in April
total_earnings_april(TotalEarnings) :-
weekly_earnings(WeeklyEarnings),  % Get weekly earnings
TotalEarnings is WeeklyEarnings * 4.  % Multiply weekly earnings by weeks in April
% Query predicate to run the program and get the result
query(TotalEarnings) :-
total_earnings_april(TotalEarnings).
% Uncomment the following line to run the query
% ?- query(TotalEarnings).
%query(TotalEarnings).