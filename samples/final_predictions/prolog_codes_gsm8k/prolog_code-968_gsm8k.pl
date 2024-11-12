% Define the rule for calculating total earnings
total_earnings(Yams, SweetPotatoes, Carrots, TotalEarnings) :-
EarningsFromYams is Yams * 1.5,
EarningsFromSweetPotatoes is SweetPotatoes * 2,
EarningsFromCarrots is Carrots * 1.25,
TotalEarnings is EarningsFromYams + EarningsFromSweetPotatoes + EarningsFromCarrots.
% Predicate to encapsulate the entire calculation and output total earnings
calculate_total_earnings(TotalEarnings) :-
total_earnings(6, 10, 4, TotalEarnings).  % Quantities and prices are given in the problem
% Query to find the total earnings Jen will make
query(TotalEarnings) :-
calculate_total_earnings(TotalEarnings).
% Uncomment the following line to run the query
% ?- query(TotalEarnings).
%query(TotalEarnings).