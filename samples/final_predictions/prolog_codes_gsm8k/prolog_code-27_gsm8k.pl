% Define the total cost of shorts
total_cost_shorts(ShortsCost, TotalShortsCost) :-
TotalShortsCost is 3 * ShortsCost.
% Define the total cost of pants
total_cost_pants(PantsCost, TotalPantsCost) :-
TotalPantsCost is 3 * PantsCost.
% Define the total cost of shoes
total_cost_shoes(ShoesCost, TotalShoesCost) :-
TotalShoesCost is 3 * ShoesCost.
% Define the total cost of all items
total_cost_all_items(ShortsCost, PantsCost, ShoesCost, TotalCost) :-
total_cost_shorts(ShortsCost, TotalShortsCost),
total_cost_pants(PantsCost, TotalPantsCost),
total_cost_shoes(ShoesCost, TotalShoesCost),
TotalCost is TotalShortsCost + TotalPantsCost + TotalShoesCost.
% Predicate to encapsulate the entire calculation and output the total cost
calculate_total_cost(TotalCost) :-
total_cost_all_items(16.50, 22.50, 42, TotalCost).  % Costs are given in the problem
% Query to find the total cost of all clothing items
query(TotalCost) :-
calculate_total_cost(TotalCost).
% Uncomment the following line to run the query
% ?- query(TotalCost).
%query(TotalCost).