% Define the rule to calculate Charlie's net profit
calculate_net_profit(NumCandles, CostPerPound, RevenuePerCandle, CostOfSupplies, NetProfit) :-
CostOfSupplies is CostPerPound + 10, % Cost of one pound of beeswax and wicks
TotalCost is CostOfSupplies * (NumCandles / 10), % Total cost of supplies for making NumCandles
TotalRevenue is NumCandles * RevenuePerCandle, % Total revenue from selling NumCandles
NetProfit is TotalRevenue - TotalCost. % Calculate the net profit
% Query to find Charlie's net profit when making and selling 20 candles
query(NetProfit) :-
calculate_net_profit(20, 10, 2, CostOfSupplies, NetProfit).
% Uncomment the following line to run the query
% ?- query(NetProfit).
%query(NetProfit).