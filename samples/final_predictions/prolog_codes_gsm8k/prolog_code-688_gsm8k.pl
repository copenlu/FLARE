% Define costs of candies
cost_per_candy(a, 0.5).
cost_per_candy(b, 0.75).
% Calculate total cost of candies
total_cost(CostA, CostB, TotalCost) :-
cost_per_candy(a, CostPerA),
cost_per_candy(b, CostPerB),
TotalCost is (CostPerA * CostA) + (CostPerB * CostB).
% Calculate change received
calculate_change(PaidAmount, CostA, CostB, Change) :-
total_cost(CostA, CostB, TotalCost),
Change is PaidAmount - TotalCost.
% Query to calculate the change Adam received
query(Change) :-
calculate_change(15, 7, 10, Change).
% Uncomment the following line to run the query and calculate the change received by Adam
% ?- query(Change).
%query(Change).