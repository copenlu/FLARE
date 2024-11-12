% Define the cost per pair of snowshoes
cost_per_pair(12.00).
% Calculate the total cost for snowshoes
calculate_cost(NumDogs, TotalCost) :-
Legs is NumDogs * 4,  % Calculate total number of legs
PairsNeeded is Legs / 2,  % Calculate total number of pairs of snowshoes needed
cost_per_pair(CostPerPair),  % Get the cost per pair of snowshoes
TotalCost is PairsNeeded * CostPerPair.  % Calculate the total cost
% Query to calculate the total cost for snowshoes for Mario's dogs
query(TotalCost) :-
calculate_cost(6, TotalCost).  % Assuming Mario has 6 sled dogs
% Uncomment the following line to run the query and calculate the total cost
% ?- query(TotalCost).
%query(TotalCost).