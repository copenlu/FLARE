% Assumed atom/predicate
cost_pots_pans(120).
cost_mixing_bowls(20).
cost_utensils(5).
% Predicate to calculate the subtotal of the order
subtotal(Subtotal, CostPotsPans, CostBowls, CostUtensils) :-
Subtotal is CostPotsPans + CostBowls + (5 * CostUtensils).
% Predicate to calculate the discount amount
discount_amount(Subtotal, Discount) :-
Discount is 0.2 * Subtotal.
% Predicate to calculate the final amount paid after discount
final_amount_paid(Subtotal, Discount, FinalAmount) :-
FinalAmount is Subtotal - Discount.
% Main predicate to calculate the final amount paid by Charlotte
charlotte_order(FinalAmount) :-
cost_pots_pans(CostPotsPans),
cost_mixing_bowls(CostBowls),
cost_utensils(CostUtensils),
subtotal(Subtotal, CostPotsPans, CostBowls, CostUtensils),
discount_amount(Subtotal, Discount),
final_amount_paid(Subtotal, Discount, FinalAmount).
% Query predicate to get the final amount paid by Charlotte
query(FinalAmount) :-
charlotte_order(FinalAmount).
% Uncomment the following line to run the query
% ?- query(FinalAmount).
%query(FinalAmount).