% Calculate total cost for Becky before discount
total_cost_becky(TotalCostBecky) :-
CostPerAppleBecky = 45,  % Cost per apple in cents
QuantityBecky = 20,
TotalCostBecky is CostPerAppleBecky * QuantityBecky.
% Calculate total cost for Kelly before discount
total_cost_kelly(TotalCostKelly) :-
CostPerAppleKelly = 50,  % Cost per apple in cents
QuantityKelly = 20,
TotalCostKelly is CostPerAppleKelly * QuantityKelly.
% Calculate final amount paid by Becky after discount
final_amount_becky(FinalAmountBecky) :-
total_cost_becky(TotalCostBecky),
DiscountBecky = 1,  % Discount in dollars
FinalAmountBecky is TotalCostBecky - DiscountBecky.
% Calculate final amount paid by Kelly after discount
final_amount_kelly(FinalAmountKelly) :-
total_cost_kelly(TotalCostKelly),
DiscountKellyPercentage = 0.10,  % 10% discount
DiscountKelly is TotalCostKelly * DiscountKellyPercentage,
FinalAmountKelly is TotalCostKelly - DiscountKelly.
% Calculate the difference in the amounts paid by Becky and Kelly
difference_amount(Difference) :-
final_amount_becky(FinalAmountBecky),
final_amount_kelly(FinalAmountKelly),
Difference is FinalAmountKelly - FinalAmountBecky.
% Query to calculate how much more Kelly paid than Becky
query(Difference) :-
difference_amount(Difference).
% Uncomment the following line to run the query and calculate the difference
% ?- query(Difference).
%query(Difference).