% Define the rule to calculate earnings from standard rate lessons
earnings_standard_rate(StandardRateEarnings) :-
StandardRateEarnings is 4 * 80.
% Define the rule to calculate earnings from lessons with veteran discount
earnings_veteran_discount(VeteranDiscountEarnings) :-
VeteranDiscountEarnings is 2 * 80 * 0.75.
% Define the rule to calculate total earnings for the day
total_earnings(TotalEarnings) :-
earnings_standard_rate(StandardRateEarnings),
earnings_veteran_discount(VeteranDiscountEarnings),
TotalEarnings is StandardRateEarnings + VeteranDiscountEarnings.
% Query to find the total earnings for the day
query(TotalEarnings) :-
total_earnings(TotalEarnings).
% Uncomment the following line to run the query
% ?- query(TotalEarnings).
%query(TotalEarnings).