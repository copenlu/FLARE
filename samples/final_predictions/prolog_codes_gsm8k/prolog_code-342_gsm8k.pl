% Define the total cost for Furniture United's offer
total_cost_furniture_united(TotalCostFU) :-
TotalCostFU is 1350 + 6 * 350.
% Define the total cost for Cozy Homes' offer
total_cost_cozy_homes(TotalCostCH) :-
TotalCostCH is 1100 + 9 * 250.
% Define the cost difference between the two offers
cost_difference(Difference) :-
total_cost_furniture_united(TotalCostFU),
total_cost_cozy_homes(TotalCostCH),
Difference is TotalCostFU - TotalCostCH.
% Query predicate to run the program and get the result
query(Difference) :-
cost_difference(Difference).
% Uncomment the following line to run the query
% ?- query(Difference).
%query(Difference).