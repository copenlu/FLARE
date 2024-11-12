% Define the rule to calculate the cost per sandwich
% Params: PackageCost, NumSandwiches, CostPerSandwich
cost_per_sandwich(PackageCost, NumSandwiches, CostPerSandwich) :-
CostPerSandwich is PackageCost / NumSandwiches.
% Calculate the cost per sandwich for the first package with 2 sandwiches
cost_per_sandwich(3, 2, CostPerSandwich1).
% Calculate the cost per sandwich for the second package with 4 sandwiches
cost_per_sandwich(6, 4, CostPerSandwich2).
% Calculate the cost of the package with 8 sandwiches using the calculated cost per sandwich
PackageCost8 is CostPerSandwich1 * 8.
% Query predicate to get the cost of the package with 8 sandwiches
query(PackageCost8) :-
PackageCost8.
% Uncomment the following line to run the query
% query(PackageCost8).
%query(PackageCost8).