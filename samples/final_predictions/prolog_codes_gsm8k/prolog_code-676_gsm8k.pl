% Define costs per pound
cost_per_pound(almonds, 10).
cost_per_pound(walnuts, 15).
% Calculate the cost of a mixture based on weights
cost_of_mixture(AlmondWeight, WalnutWeight, TotalCost) :-
cost_per_pound(almonds, AlmondCost),
cost_per_pound(walnuts, WalnutCost),
TotalCost is (AlmondWeight * AlmondCost) + (WalnutWeight * WalnutCost).
% Calculate the cost difference between two mixtures
cost_difference(Mixture1AlmondWeight, Mixture1WalnutWeight, Mixture2AlmondWeight, Mixture2WalnutWeight, Difference) :-
cost_of_mixture(Mixture1AlmondWeight, Mixture1WalnutWeight, TotalCost1),
cost_of_mixture(Mixture2AlmondWeight, Mixture2WalnutWeight, TotalCost2),
Difference is TotalCost1 - TotalCost2.
% Query to calculate the cost difference between the two mixtures
query(Difference) :-
cost_difference(1/2, 1/3, 1/5, 1/3, Difference).
% Uncomment the following line to run the query and calculate the cost difference
% ?- query(Difference).
%query(Difference).