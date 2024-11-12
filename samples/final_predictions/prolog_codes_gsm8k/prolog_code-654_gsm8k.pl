% Define the cost of four apples and three oranges
cost(4, 5.20).
cost(3, 3.30).
% Calculate the cost of one apple
cost_per_apple(CostPerApple) :-
cost(4, TotalCostApples),
CostPerApple is TotalCostApples / 4.
% Calculate the cost of one orange
cost_per_orange(CostPerOrange) :-
cost(3, TotalCostOranges),
CostPerOrange is TotalCostOranges / 3.
% Calculate the total cost for 5 apples and 5 oranges
total_cost_for_fruits(TotalCost) :-
cost_per_apple(CostPerApple),
cost_per_orange(CostPerOrange),
TotalCost is (CostPerApple * 5) + (CostPerOrange * 5).
% Query to find the total cost for 5 apples and 5 oranges
query(TotalCost) :-
total_cost_for_fruits(TotalCost).
% Uncomment the following line to run the query
% ?- query(TotalCost).
%query(TotalCost).