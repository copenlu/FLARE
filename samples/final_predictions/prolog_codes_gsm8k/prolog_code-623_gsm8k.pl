% Define the rule to calculate the total cost before discount
total_cost(ShirtPrice, ShortsPrice, TotalCost) :-
TotalCost is ShirtPrice + ShortsPrice.
% Define the rule to calculate the discounted amount
discounted_amount(TotalCost, Discount, DiscountedAmount) :-
DiscountedAmount is TotalCost * (1 - Discount).
% Define the rule to calculate the remaining money after the purchase
remaining_money(InitialBudget, DiscountedAmount, RemainingMoney) :-
RemainingMoney is InitialBudget - DiscountedAmount.
% Given values
ShirtPrice = 25,
ShortsPrice = 35,
Discount = 0.30,
InitialBudget = 50.
% Query to find the remaining money after the purchase
query(RemainingMoney) :-
total_cost(ShirtPrice, ShortsPrice, TotalCost),
discounted_amount(TotalCost, Discount, DiscountedAmount),
remaining_money(InitialBudget, DiscountedAmount, RemainingMoney).
% Uncomment the following line to run the query
% ?- query(RemainingMoney).
%query(RemainingMoney).