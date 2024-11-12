% Define the rule to calculate earnings for a given period
earnings_per_period(CupsPerHour, PricePerCup, Hours, TotalEarnings) :-
TotalCups is CupsPerHour * Hours,
TotalEarnings is TotalCups * PricePerCup.
% Calculate earnings for the first 4 hours
earnings_per_period(15, 0.50, 4, EarningsFirstPeriod).
% Calculate earnings for the next 2 hours
earnings_per_period(10, 0.60, 2, EarningsSecondPeriod).
% Calculate total earnings for 6 hours
total_earnings(TotalEarnings) :-
earnings_per_period(15, 0.50, 4, EarningsFirstPeriod),
earnings_per_period(10, 0.60, 2, EarningsSecondPeriod),
TotalEarnings is EarningsFirstPeriod + EarningsSecondPeriod.
% Query to find the total earnings for 6 hours
query(TotalEarnings) :-
total_earnings(TotalEarnings).
% Uncomment the following line to run the query
% ?- query(TotalEarnings).
%query(TotalEarnings).