% Define the total cost of the two pairs of high heels
total_cost_high_heels(Cost1, Cost2, TotalCost) :-
TotalCost is Cost1 + Cost2.
% Define the cost of the boots
cost_of_boots(TotalCostHighHeels, BootsCost) :-
BootsCost is TotalCostHighHeels + 5.
% Predicate to encapsulate the entire calculation and output the cost of the boots
calculate_boots_cost(BootsCost) :-
total_cost_high_heels(33, 2*33, TotalCostHighHeels),  % Costs are given in the problem
cost_of_boots(TotalCostHighHeels, BootsCost).
% Query to find the cost of the boots
query(BootsCost) :-
calculate_boots_cost(BootsCost).
% Uncomment the following line to run the query
% ?- query(BootsCost).
%query(BootsCost).