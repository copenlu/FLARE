% Define hourly rate for Lorie
hourly_rate(lorie, 10).
% Calculate Karen's hourly rate (twice Lorie's rate)
hourly_rate(karen, Rate) :-
hourly_rate(lorie, LorieRate),
Rate is LorieRate * 2.
% Calculate Karen's daily earnings
daily_earnings(karen, DailyEarnings) :-
hourly_rate(karen, Rate),
DailyEarnings is Rate * 3.
% Calculate Karen's total earnings in two days
total_earnings_two_days(karen, TotalEarnings) :-
daily_earnings(karen, DailyEarnings),
TotalEarnings is DailyEarnings * 2.
% Query to calculate Karen's total earnings in two days
query(TotalEarnings) :-
total_earnings_two_days(karen, TotalEarnings).
% Uncomment the following line to run the query and calculate Karen's total earnings in two days
% ?- query(TotalEarnings).
%query(TotalEarnings).