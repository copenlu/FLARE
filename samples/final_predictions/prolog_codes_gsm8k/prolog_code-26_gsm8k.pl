% Define total cost of items excluding pizza
total_cost_excluding_pizza(ChickenCost, MilkPacks, AppleCost, TotalCost) :-
TotalCost is ChickenCost + (5 * MilkPacks) + (4 * AppleCost).
% Define number of pizza boxes ordered
boxes_of_pizza_ordered(TotalPaid, TotalCost, BoxCost, BoxesOrdered) :-
RemainingCost is TotalPaid - TotalCost,
BoxesOrdered is RemainingCost / BoxCost.
% Predicate to encapsulate the entire calculation and output the number of pizza boxes ordered
calculate_pizza_boxes(BoxesOrdered) :-
total_cost_excluding_pizza(12, 3, 1.5, TotalCost),  % Costs are given in the problem
boxes_of_pizza_ordered(50, TotalCost, 8.5, BoxesOrdered).
% Query to find the number of pizza boxes Marie ordered
query(BoxesOrdered) :-
calculate_pizza_boxes(BoxesOrdered).
% Uncomment the following line to run the query
% ?- query(BoxesOrdered).
%query(BoxesOrdered).