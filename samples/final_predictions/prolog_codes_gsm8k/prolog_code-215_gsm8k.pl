% Define the total cost of half a dozen plates
total_cost_plates(TotalCostPlates) :-
TotalCostPlates is 6 * 6000.
% Define the total cost of twenty dozen cups
total_cost_cups(TotalCostCups) :-
total_cost_plates(TotalCostPlates),  % Assumed atom/predicate: total_cost_plates
TotalCostCups is TotalCostPlates - 1200.
% Define the cost per cup
cost_per_cup(CostPerCup) :-
total_cost_cups(TotalCostCups),  % Assumed atom/predicate: total_cost_cups
TotalCups is 20 * 12,
CostPerCup is TotalCostCups / TotalCups.
% Query predicate to run the program and get the result
query(CostPerCup) :-
cost_per_cup(CostPerCup).
% Uncomment the following line to run the query
% ?- query(CostPerCup).
%query(CostPerCup).