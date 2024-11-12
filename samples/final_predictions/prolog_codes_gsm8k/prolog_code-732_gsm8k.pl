% Define the fixed cost for blueberry picking and cost per pound
cost_of_picking(20).  % Assumed fixed cost for blueberry picking
cost_per_pound(1.5).  % Assumed cost per pound of blueberries picked
% Define the total pounds of blueberries picked
total_pounds_picked(30).
% Define the cost per pound at the store
cost_at_store(2.5).  % Assumed cost per pound of blueberries at the store
% Calculate the total cost of blueberry picking
total_cost_of_picking(TotalCost) :-
cost_of_picking(FixedCost),
cost_per_pound(CostPerPound),
total_pounds_picked(TotalPounds),
TotalCost is FixedCost + (CostPerPound * TotalPounds).
% Calculate the total cost of buying blueberries at the store
total_cost_at_store(TotalCostAtStore) :-
cost_at_store(CostPerPoundAtStore),
total_pounds_picked(TotalPounds),
TotalCostAtStore is CostPerPoundAtStore * TotalPounds.
% Calculate the savings made by picking blueberries compared to buying at the store
savings(Savings) :-
total_cost_of_picking(TotalCost),
total_cost_at_store(TotalCostAtStore),
Savings is TotalCostAtStore - TotalCost.
% Query predicate to find the savings made by James
query(Savings) :-
savings(Savings).
% Uncomment the line below to run the query
% query(Savings).
%query(Savings).