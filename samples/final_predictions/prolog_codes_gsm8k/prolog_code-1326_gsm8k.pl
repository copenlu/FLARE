% Define the rule for calculating total cost of T-shirts after discount
total_cost_tshirts(OriginalPrice, NumTshirts, TotalCost) :-
TotalCost is OriginalPrice * NumTshirts * 0.75. % 50% off on the second T-shirt
% Define the rule for calculating total cost of shoes after discount
total_cost_shoes(OriginalPrice, DiscountPercentage, TotalCost) :-
TotalCost is OriginalPrice * (1 - DiscountPercentage).
% Define the rule for calculating total amount spent
total_amount_spent(TshirtCost, ShoeCost, TotalAmount) :-
TotalAmount is TshirtCost + ShoeCost.
% Define a predicate to execute the specific query with given values
query(TotalAmount) :-
total_cost_tshirts(8, 2, TshirtCost),
total_cost_shoes(40, 0.4, ShoeCost),
total_amount_spent(TshirtCost, ShoeCost, TotalAmount).
% Uncomment the line below to run the query
% ?- query(TotalAmount).
%query(TotalAmount).