% Define the conversion rates for each type of currency into dollars
penny_value(0.01).
nickel_value(0.05).
dime_value(0.10).
dollar_value(1.00).
% Calculate the total value of each type of currency
total_amount_in_dollars(TotalAmount) :-
% Constants
NumPennies = 100,
NumNickels = 40,
NumDimes = 20,
NumDollars = 40,
% Calculate total value for each type of currency
penny_value(PennyValue),
nickel_value(NickelValue),
dime_value(DimeValue),
dollar_value(DollarValue),
TotalPennies is NumPennies * PennyValue,
TotalNickels is NumNickels * NickelValue,
TotalDimes is NumDimes * DimeValue,
TotalDollars is NumDollars * DollarValue,
% Calculate total amount in dollars
TotalAmount is TotalPennies + TotalNickels + TotalDimes + TotalDollars.
% Query predicate to get the total amount in dollars
query(TotalAmount) :-
total_amount_in_dollars(TotalAmount).
% Uncomment the following line to run the query
% query(TotalAmount).
%query(TotalAmount).