% Define costs of morning and afternoon rides
cost(morning, 6).
cost(afternoon, 2).
% Calculate total cost of morning rides for 14 days
total_cost_morning(TotalCost) :-
cost(morning, CostPerRide),
TotalCost is CostPerRide * 14.
% Calculate total cost of afternoon rides for 14 days
total_cost_afternoon(TotalCost) :-
cost(afternoon, CostPerRide),
TotalCost is CostPerRide * 14.
% Calculate total amount spent on driving the car during two weeks
total_amount_spent(TotalAmount) :-
total_cost_morning(MorningCost),
total_cost_afternoon(AfternoonCost),
TotalAmount is MorningCost + AfternoonCost.
% Query predicate to run the program and get the result
query(TotalAmount) :-
total_amount_spent(TotalAmount).
% Uncomment the following line to run the query
% ?- query(TotalAmount).
%query(TotalAmount).