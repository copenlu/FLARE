% Predicate to calculate the discounted price of a blouse after a 30% discount
discounted_price(RegularPrice, DiscountedPrice) :-
DiscountedPrice is RegularPrice - (RegularPrice * 0.3).
% Predicate to calculate the total cost of the discounted blouses
total_cost_discounted_blouses(DiscountedPrice, NumBlouses, TotalCost) :-
TotalCost is DiscountedPrice * NumBlouses.
% Main predicate to calculate the total cost of the discounted blouses Misha picked
misha_discounted_blouses(RegularPrice, NumBlouses, TotalCost) :-
discounted_price(RegularPrice, DiscountedPrice),
total_cost_discounted_blouses(DiscountedPrice, NumBlouses, TotalCost).
% Query to find out the total cost of the discounted blouses after Misha picked 4 blouses at $20 each
query(TotalCost) :-
misha_discounted_blouses(20, 4, TotalCost).
% Uncomment the following line to run the query
% ?- query(TotalCost).
%query(TotalCost).