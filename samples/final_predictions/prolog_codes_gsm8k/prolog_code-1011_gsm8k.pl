% Define costs of petunias and sweet potato vines
cost(petunia, 3.00).
cost(sweet_potato_vine, 2.50).
% Calculate total cost of filling one basket
total_cost_per_basket(TotalCost) :-
cost(petunia, PetuniaCost),
cost(sweet_potato_vine, SweetPotatoCost),
TotalCost is 3 * PetuniaCost + 2 * SweetPotatoCost.
% Calculate total cost of filling all 5 baskets
total_cost_all_baskets(TotalCostAll) :-
total_cost_per_basket(CostPerBasket),
TotalCostAll is CostPerBasket * 5.
% Query predicate to find the total cost of filling all 5 hanging baskets
query(TotalCostAll) :-
total_cost_all_baskets(TotalCostAll).
% Uncomment the line below to run the query
% query(TotalCostAll).
%query(TotalCostAll).