% Define the predicate to calculate Mark's earnings per hour after the pay raise
% Params: Rate, NewRate
earnings_per_hour(Rate, NewRate) :-
NewRate is Rate + 2.
% Define the predicate to calculate Mark's daily earnings
% Params: Hours, Rate, Earnings
daily_earnings(Hours, Rate, Earnings) :-
Earnings is Hours * Rate.
% Define the predicate to calculate Mark's weekly earnings
% Params: DailyEarnings, Days, TotalEarnings
weekly_earnings(DailyEarnings, Days, TotalEarnings) :-
TotalEarnings is DailyEarnings * Days.
% Constants
InitialRate = 10,  % Initial pay rate in dollars per hour
NewRate = 12,  % Pay rate after the raise in dollars per hour
WorkHours = 8,  % Number of hours worked per day
WorkDaysPerWeek = 5,  % Number of workdays per week
% Calculate Mark's daily earnings with the new pay rate
daily_earnings(WorkHours, NewRate, DailyEarnings),
% Calculate Mark's total weekly earnings
weekly_earnings(DailyEarnings, WorkDaysPerWeek, TotalEarnings).
% Query predicate to get the total weekly earnings
query(TotalEarnings) :-
weekly_earnings(DailyEarnings, WorkDaysPerWeek, TotalEarnings).
% Uncomment the following line to run the query
% ?- query(TotalEarnings).
%query(TotalEarnings).