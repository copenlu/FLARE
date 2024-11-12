% Define the rule to calculate the total cost of one batch of macaroni and cheese
total_cost_one_batch(TotalCost) :-
PastaCost is 1.00,          % Cost of pasta per box
CheddarCost is 3.00,        % Cost of cheddar cheese
GruyereCost is 2 * CheddarCost,  % Cost of gruyere cheese is twice the cost of cheddar
TotalCost is PastaCost + CheddarCost + GruyereCost.
% Define the rule to calculate the total cost of making macaroni and cheese in one year
total_cost_one_year(TotalCost) :-
total_cost_one_batch(CostOneBatch),
TotalCost is CostOneBatch * 52. % Bud makes it once a week for a year (52 weeks)
% Query to find out how much money Bud spends on making macaroni and cheese in one year
query(TotalCost) :-
total_cost_one_year(TotalCost).
% Uncomment the following line to run the query
% ?- query(TotalCost).
%query(TotalCost).