% Predicate to calculate the total cost of milk purchased
% Params: MilkQuantity, CostPerGallon, TotalCost
total_cost(MilkQuantity, CostPerGallon, TotalCost) :-
TotalCost is MilkQuantity * CostPerGallon.
% Predicate to calculate the quantity of expired milk
% Params: TotalQuantity, ExpiredQuantity
expired_milk_quantity(TotalQuantity, ExpiredQuantity) :-
ExpiredQuantity is TotalQuantity * 2 / 5.
% Predicate to calculate the cost of expired milk
% Params: ExpiredQuantity, CostPerGallon, ExpiredCost
expired_milk_cost(ExpiredQuantity, CostPerGallon, ExpiredCost) :-
ExpiredCost is ExpiredQuantity * CostPerGallon.
% Predicate to calculate the refund amount
% Params: ExpiredCost, RefundAmount
refund_amount(ExpiredCost, RefundAmount) :-
RefundAmount is ExpiredCost.
% Main predicate to compute the refund amount for expired milk
% Params: RefundAmount
calculate_refund_amount(RefundAmount) :-
% Constants
MilkQuantity = 4000,
CostPerGallon = 3.5,
% Calculate total cost of milk purchased
total_cost(MilkQuantity, CostPerGallon, TotalCost),
% Calculate quantity of expired milk
expired_milk_quantity(MilkQuantity, ExpiredQuantity),
% Calculate cost of expired milk
expired_milk_cost(ExpiredQuantity, CostPerGallon, ExpiredCost),
% Calculate refund amount
refund_amount(ExpiredCost, RefundAmount).
% Query predicate to get the refund amount
query(RefundAmount) :-
calculate_refund_amount(RefundAmount).
% Uncomment the following line to run the query
% query(RefundAmount).
%query(RefundAmount).