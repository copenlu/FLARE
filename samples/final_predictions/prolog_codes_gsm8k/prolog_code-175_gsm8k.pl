% Define a predicate to calculate the cost of the jacket
jacket_cost(HatCost, JacketCost) :-
JacketCost is 3 * HatCost.
% Define a predicate to calculate the cost of the pants
pants_cost(HatCost, JacketCost, PantsCost) :-
PantsCost is (HatCost + JacketCost) / 2.
% Define a predicate to calculate the total cost of the uniform
total_uniform_cost(HatCost, JacketCost, PantsCost, TotalCost) :-
TotalCost is HatCost + JacketCost + PantsCost.
% Define a query predicate to find out the total cost of each uniform
query(TotalCost) :-
% Given hat cost of $25
HatCost = 25,
jacket_cost(HatCost, JacketCost),
pants_cost(HatCost, JacketCost, PantsCost),
total_uniform_cost(HatCost, JacketCost, PantsCost, TotalCost).
% Uncomment the line below to run the query in SWI-Prolog
% query(TotalCost).
%query(TotalCost).