% Define costs of items
item_cost(chips, 2).
item_cost(chicken, 8).
item_cost(soda, 1).
item_cost(apple_pie, ApplePieCost). % Assumed cost of the apple pie
% Calculate total cost of items purchased
total_cost(TotalCost) :-
item_cost(chips, ChipsCost),
item_cost(chicken, ChickenCost),
item_cost(soda, SodaCost),
TotalSpent is 20,
TotalCost is ChipsCost * 2 + ChickenCost + SodaCost.
% Calculate cost of the apple pie
cost_of_apple_pie(ApplePieCost) :-
total_cost(TotalCost),
item_cost(apple_pie, ApplePieCost),
GusSpent is 20,
ApplePieCost is GusSpent - TotalCost.
% Query to calculate the cost of the apple pie
query(ApplePieCost) :-
cost_of_apple_pie(ApplePieCost).
% Uncomment the following line to run the query and calculate the cost of the apple pie
% ?- query(ApplePieCost).
%query(ApplePieCost).