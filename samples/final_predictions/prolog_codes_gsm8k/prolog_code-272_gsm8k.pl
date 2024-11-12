% Predicate to calculate the brokerage fee
% Params: SellingPrice, BrokerageFeePercentage, BrokerageFee
brokerage_fee(SellingPrice, BrokerageFeePercentage, BrokerageFee) :-
BrokerageFee is SellingPrice * BrokerageFeePercentage / 100.
% Predicate to calculate the transfer fee
% Params: SellingPrice, TransferFeePercentage, TransferFee
transfer_fee(SellingPrice, TransferFeePercentage, TransferFee) :-
TransferFee is SellingPrice * TransferFeePercentage / 100.
% Predicate to calculate the total cost of the house
% Params: SellingPrice, BrokerageFee, TransferFee, TotalCost
total_cost(SellingPrice, BrokerageFee, TransferFee, TotalCost) :-
TotalCost is SellingPrice + BrokerageFee + TransferFee.
% Predicate to calculate the excess amount over the budget
% Params: TotalCost, Budget, ExcessAmount
excess_amount(TotalCost, Budget, ExcessAmount) :-
ExcessAmount is TotalCost - Budget.
% Main predicate to compute the excess amount over the budget
% Params: ExcessAmount
calculate_excess_amount(ExcessAmount) :-
% Constants
SellingPrice = 350000,
BrokerageFeePercentage = 5,
TransferFeePercentage = 12,
Budget = 400000,
% Calculate brokerage fee
brokerage_fee(SellingPrice, BrokerageFeePercentage, BrokerageFee),
% Calculate transfer fee
transfer_fee(SellingPrice, TransferFeePercentage, TransferFee),
% Calculate total cost of the house
total_cost(SellingPrice, BrokerageFee, TransferFee, TotalCost),
% Calculate excess amount over the budget
excess_amount(TotalCost, Budget, ExcessAmount).
% Query predicate to get the excess amount over the budget
query(ExcessAmount) :-
calculate_excess_amount(ExcessAmount).
% Uncomment the following line to run the query
% query(ExcessAmount).
%query(ExcessAmount).