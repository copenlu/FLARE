% Define the rule to calculate the cost per flower
calculate_cost_per_flower(PackagePrice, PackageSize, CostPerFlower) :-
CostPerFlower is PackagePrice / PackageSize.
% Define the rule to calculate the total cost
total_cost(PackagePrice, PackageSize, TotalFlowers, TotalCost) :-
calculate_cost_per_flower(PackagePrice, PackageSize, CostPerFlower),
TotalCost is CostPerFlower * TotalFlowers.
% Define the rule to calculate the savings
calculate_savings(TotalCost1, TotalCost2, Savings) :-
Savings is TotalCost2 - TotalCost1.
% Calculate the savings for buying 18 flowers at the better price
calculate_savings(2.50, 3, 18, TotalCost1),
calculate_savings(1, 2, 18, TotalCost2),
calculate_savings(TotalCost1, TotalCost2, Savings).
% Define a predicate that returns the correct numerical answer when queried
query(Savings) :-
calculate_savings(2.50, 3, 18, TotalCost1),
calculate_savings(1, 2, 18, TotalCost2),
calculate_savings(TotalCost1, TotalCost2, Savings).
% Uncomment the following line to run the query
% ?- query(Savings).
%query(Savings).