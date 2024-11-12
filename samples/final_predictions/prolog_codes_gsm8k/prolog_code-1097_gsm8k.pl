% Define the rule to calculate the cost per pound of butter with the promotion
calculate_cost_per_pound(OriginalCost, DiscountedCost) :-
DiscountedCost is OriginalCost / 2.
% Define the rule to calculate the total cost of purchasing the required pounds of butter
calculate_total_cost(PoundsNeeded, OriginalCost, TotalCost) :-
calculate_cost_per_pound(OriginalCost, DiscountedCost),
TotalCost is PoundsNeeded * DiscountedCost.
% Query to find the total cost of purchasing 6 pounds of butter at $4.00 per pound
query_total_cost(TotalCost) :-
calculate_total_cost(6, 4.00, TotalCost).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_total_cost(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).