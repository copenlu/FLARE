% Define the rule to calculate the final grooming cost after applying the discount
final_grooming_cost(OriginalCost, DiscountedCost) :-
DiscountPercentage is 0.30,  % 30% discount
DiscountAmount is OriginalCost * DiscountPercentage,
DiscountedCost is OriginalCost - DiscountAmount.
% Query to find the final grooming cost after applying a 30% discount to an original cost of $100
query_final_grooming_cost(DiscountedCost) :-
final_grooming_cost(100, DiscountedCost).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_final_grooming_cost(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).