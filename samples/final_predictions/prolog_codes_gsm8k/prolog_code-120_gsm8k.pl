% Define cost per pair of shoes
cost_per_pair(60).
% Calculate total cost
calculate_total_cost(NumChildren, TotalCost) :-
cost_per_pair(Cost),
TotalCost is Cost * 2 * NumChildren.
% Query to calculate the total amount John paid for the shoes
query(TotalCost) :-
calculate_total_cost(3, TotalCost).
% Uncomment the following line to run the query and calculate the total cost
% ?- query(TotalCost).
%query(TotalCost).