% Define the cost per yogurt
cost_per_yogurt(NumYogurts, TotalCost, CostPerYogurt) :-
CostPerYogurt is TotalCost / NumYogurts.
% Define the total daily cost
total_daily_cost(NumYogurtsPerDay, CostPerYogurt, DailyCost) :-
DailyCost is NumYogurtsPerDay * CostPerYogurt.
% Define the total cost over 30 days
total_cost_over_30_days(DailyCost, TotalDays, TotalCost) :-
TotalCost is DailyCost * TotalDays.
% Predicate to encapsulate the entire calculation and output the total cost over 30 days
calculate_total_cost(TotalCost) :-
cost_per_yogurt(4, 5.00, CostPerYogurt),  % Given values in the problem
total_daily_cost(2, CostPerYogurt, DailyCost),
total_cost_over_30_days(DailyCost, 30, TotalCost).
% Query to find the total cost Terry spends on yogurt over 30 days
query(TotalCost) :-
calculate_total_cost(TotalCost).
% Uncomment the following line to run the query
% ?- query(TotalCost).
%query(TotalCost).