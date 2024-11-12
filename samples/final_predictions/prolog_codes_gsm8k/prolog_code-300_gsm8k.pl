% Define the earnings per 10-minute interval
earnings_per_interval(Earnings) :- Earnings is 5.
% Define the predicate to calculate total earnings
total_earnings(TotalEarnings) :-
TotalWorkTime is (11 - 8) * 60, % Total work time in minutes
BreakTime is 30, % Break time in minutes
ActualWorkTime is TotalWorkTime - BreakTime,
Intervals is ActualWorkTime / 10,
earnings_per_interval(EarningsPerInterval),
TotalEarnings is Intervals * EarningsPerInterval.
% Query predicate to run the program and get the result
query(TotalEarnings) :-
total_earnings(TotalEarnings).
% Uncomment the following line to run the query
% ?- query(TotalEarnings).
%query(TotalEarnings).