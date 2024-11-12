% Predicate to calculate total fees paid
% Params: SellingPrice, TransferFee, BrokerageFee, TotalFees
calculate_total_fees(SellingPrice, TransferFee, BrokerageFee, TotalFees) :-
TransferFee is 0.03 * SellingPrice,  % 3% of selling price for transfer fees
BrokerageFee is 0.05 * SellingPrice, % 5% of selling price for brokerage fee
TotalFees is TransferFee + BrokerageFee.
% Predicate to calculate net proceeds from selling the house
% Params: SellingPrice, TotalFees, RemainingLoanAmount, NetProceeds
calculate_net_proceeds(SellingPrice, TotalFees, RemainingLoanAmount, NetProceeds) :-
NetProceeds is SellingPrice - TotalFees - RemainingLoanAmount.
% Main predicate to compute Mr. Tan's net proceeds from selling the house
% Params: NetProceeds
calculate_net_proceeds_main(NetProceeds) :-
% Constants
SellingPrice = 400000,  % Selling price of the house
RemainingLoanAmount = 250000,  % Remaining loan amount paid off
% Calculate total fees paid
calculate_total_fees(SellingPrice, TransferFee, BrokerageFee, TotalFees),
% Calculate net proceeds
calculate_net_proceeds(SellingPrice, TotalFees, RemainingLoanAmount, NetProceeds).
% Query predicate to get Mr. Tan's net proceeds
query(NetProceeds) :-
calculate_net_proceeds_main(NetProceeds).
% Uncomment the following line to run the query
% query(NetProceeds).
%query(NetProceeds).