% Define a predicate to calculate the total cost of buying 15 roses at $2 each
total_cost_individual_roses(15, TotalCost) :-
TotalCost is 15 * 2.
% Define a predicate to calculate the cost of buying a dozen roses for $15
total_cost_dozen_roses(15, TotalCost) :-
TotalCost is 15.
% Determine the cheaper option and calculate the total cost
calculate_total_cost(TotalCost) :-
total_cost_individual_roses(15, CostIndividual),
total_cost_dozen_roses(15, CostDozen),
(CostIndividual < CostDozen -> TotalCost = CostIndividual ; TotalCost = CostDozen).
% Calculate the change Jenny should receive
calculate_change(Change) :-
calculate_total_cost(TotalCost),
AmountPaid is 5 * 5,
Change is AmountPaid - TotalCost.
% Calculate the number of quarters Jenny will leave with
calculate_quarters(Quarters) :-
calculate_change(Change),
Quarters is floor(Change / 0.25).
% Query to find out how many quarters Jenny will leave with
query(Quarters) :-
calculate_quarters(Quarters).
% Uncomment the following line to run the query
% ?- query(Quarters).
%query(Quarters).