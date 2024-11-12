% Define the cost of each item
bacon_cost(TotalCost) :- TotalCost is 10.
chicken_cost(TotalCost) :- TotalCost is 6 * 2 * 10.
strawberries_cost(TotalCost) :- TotalCost is 3 * 4.
apples_cost(TotalCost) :- TotalCost is 7 * 4 / 2.
% Calculate the total cost of all items
total_cost(TotalCost) :-
bacon_cost(BaconCost),
chicken_cost(ChickenCost),
strawberries_cost(StrawberriesCost),
apples_cost(ApplesCost),
TotalCost is BaconCost + ChickenCost + StrawberriesCost + ApplesCost.
% Calculate the money left in Kelly's budget
money_left(MoneyLeft) :-
total_cost(TotalCost),
MoneyLeft is 65 - TotalCost.
% Query predicate to run the program and get the result
query(MoneyLeft) :-
money_left(MoneyLeft).
% Uncomment the following line to run the query
% ?- query(MoneyLeft).
%query(MoneyLeft).