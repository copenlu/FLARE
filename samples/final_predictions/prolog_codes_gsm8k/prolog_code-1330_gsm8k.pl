% Define the rule for calculating the total dollar amount based on the quantities of each type of coin
total_dollar_amount(Quarters, Dimes, Nickels, Pennies, TotalAmount) :-
DollarValueQuarters is Quarters * 0.25,
DollarValueDimes is Dimes * 0.10,
DollarValueNickels is Nickels * 0.05,
DollarValuePennies is Pennies * 0.01,
TotalAmount is DollarValueQuarters + DollarValueDimes + DollarValueNickels + DollarValuePennies.
% Define a predicate to execute the specific query with given values
query(TotalAmount) :-
total_dollar_amount(32, 95, 120, 750, TotalAmount).
% Uncomment the line below to run the query
% ?- query(TotalAmount).
%query(TotalAmount).