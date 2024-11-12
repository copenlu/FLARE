% Define costs of diamond and gold
item_cost(diamond, 600).
item_cost(gold, 300).
premium_rate(0.30).
% Calculate total cost of diamond and gold
total_cost(Item, Cost) :-
item_cost(Item, Cost).
% Calculate the premium amount
calculate_premium(TotalCostBeforePremium, PremiumAmount) :-
premium_rate(Rate),
PremiumAmount is Rate * TotalCostBeforePremium.
% Calculate the total amount paid
calculate_total_amount_paid(TotalCostBeforePremium, TotalAmountPaid) :-
calculate_premium(TotalCostBeforePremium, PremiumAmount),
TotalAmountPaid is TotalCostBeforePremium + PremiumAmount.
% Calculate the total cost before premium
total_cost_before_premium(TotalCostBeforePremium) :-
total_cost(diamond, DiamondCost),
total_cost(gold, GoldCost),
TotalCostBeforePremium is DiamondCost + GoldCost.
% Query to calculate how much James paid for the ring
query(TotalAmountPaid) :-
total_cost_before_premium(TotalCostBeforePremium),
calculate_total_amount_paid(TotalCostBeforePremium, TotalAmountPaid).
% Uncomment the following line to run the query and calculate the total amount paid by James
% ?- query(TotalAmountPaid).
%query(TotalAmountPaid).