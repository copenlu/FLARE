% Define costs of items
item_cost(bagel, 1).
TotalCost is Cost * 3.
% Calculate total cost of 2 bagels
total_cost_bagels(TotalCost) :-
item_cost(bagel, Cost),
TotalCost is Cost * 2.
calculate_cost_difference(Difference) :-
total_cost_bagels(TotalBagelsCost),
Difference is TotalLoavesCost - TotalBagelsCost.
query(Difference) :-
calculate_cost_difference(Difference).
% Uncomment the following line to run the query and calculate the cost difference
% ?- query(Difference).
%query(Difference).