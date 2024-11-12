% Predicate to calculate the cost after applying a 20% discount
discounted_cost(OriginalCost, DiscountedCost) :-
DiscountedCost is OriginalCost * 0.8.
% Predicate to calculate the total cost of the two packs after the discount
total_cost(Pack1Cost, Pack2Cost, TotalCost) :-
discounted_cost(Pack1Cost, DiscountedPack1Cost),
discounted_cost(Pack2Cost, DiscountedPack2Cost),
TotalCost is DiscountedPack1Cost + DiscountedPack2Cost.
% Predicate to calculate the total amount spent on fireworks
total_spent(Pack1Cost, Pack2Cost, FinaleFireworkCost, TotalSpent) :-
total_cost(Pack1Cost, Pack2Cost, TotalPackCost),
TotalSpent is TotalPackCost + FinaleFireworkCost.
% Query predicate to find out how much Tim spent on fireworks
query(TotalSpent) :-
total_spent(400, 800, 150, TotalSpent).
% Uncomment the following line to run the query
% ?- query(TotalSpent).
%query(TotalSpent).