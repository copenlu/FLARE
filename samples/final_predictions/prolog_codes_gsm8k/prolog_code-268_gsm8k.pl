% Define a predicate to calculate the total dollar amount
total_dollar_amount(TotalPennies, TotalDollars) :-
TotalDollars is TotalPennies / 100.
% Given data
TotalPenniesInCup = 9300,
TwoThirdsPenniesInCup is (2/3) * TotalPenniesInCup.
% Calculate the total dollar amount for two-thirds of the pennies
total_dollar_amount(TwoThirdsPenniesInCup, TotalDollars).
% Query predicate to get the total dollar amount
query(TotalDollars) :-
total_dollar_amount(TwoThirdsPenniesInCup, TotalDollars).
% Uncomment the following line to run the query
% query(TotalDollars).
%query(TotalDollars).