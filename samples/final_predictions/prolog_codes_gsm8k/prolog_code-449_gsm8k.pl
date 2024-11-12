% Predicate to calculate the total cost of onions
total_cost_onions(OnionCost) :- OnionCost is 2 * 2.
% Predicate to calculate the total cost of beef stock
total_cost_beef_stock(BeefStockCost) :- BeefStockCost is 2 * 2.
% Predicate to calculate the total cost of ingredients
total_cost(TotalCost) :-
total_cost_onions(OnionCost),
total_cost_beef_stock(BeefStockCost),
TotalCost is OnionCost + BeefStockCost.
% Predicate to calculate the cost per serving
cost_per_serving(TotalCost, Servings, CostPerServing) :-
CostPerServing is round(TotalCost / Servings).
% Main predicate to calculate the cost per serving of Antoine's French onion soup
antoine_french_onion_soup(CostPerServing) :-
total_cost(TotalCost),
cost_per_serving(TotalCost, 6, CostPerServing).
% Query to find out the cost per serving of Antoine's French onion soup
query(CostPerServing) :-
antoine_french_onion_soup(CostPerServing).
% Uncomment the following line to run the query
% ?- query(CostPerServing).
%query(CostPerServing).