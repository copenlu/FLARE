% Define the rule for calculating the money left after purchases
money_left(IceCreamCost, MovieTicketsCost, BraceletCost, AmountGivenByParents, MoneyLeft) :-
TotalCost is IceCreamCost + 2 * MovieTicketsCost + BraceletCost,
MoneyLeft is AmountGivenByParents - TotalCost.
% Define a predicate to execute the specific query with given values
query(MoneyLeft) :-
money_left(3.50, 7.50, 8.50, 40, MoneyLeft).
% Uncomment the line below to run the query
% ?- query(MoneyLeft).
%query(MoneyLeft).