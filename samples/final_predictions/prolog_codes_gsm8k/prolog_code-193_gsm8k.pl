% Define a predicate to calculate the cost price of each bag
cost_price_per_bag(PurchasePrice, TransportCost, CostPrice) :-
CostPrice is PurchasePrice + TransportCost.
% Define a predicate for the selling price of each bag
selling_price_per_bag(SellingPrice) :-
SellingPrice is 30.
% Define a predicate to calculate the profit made on each bag
profit_per_bag(CostPrice, SellingPrice, ProfitPerBag) :-
ProfitPerBag is SellingPrice - CostPrice.
% Define a predicate to calculate the total profit made by the trader
total_profit(NumBags, ProfitPerBag, TotalProfit) :-
TotalProfit is NumBags * ProfitPerBag.
% Define a predicate to find the number of bags sold to achieve the total profit
number_of_bags_sold(TotalProfit, NumBags) :-
NumBags is TotalProfit / 400.
% Define a query predicate to find out the number of bags sold
query(NumBags) :-
cost_price_per_bag(20, 2, CostPrice),  % Purchase price and transport cost
selling_price_per_bag(30),  % Selling price per bag
profit_per_bag(CostPrice, 30, ProfitPerBag),  % Profit per bag
total_profit(NumBags, ProfitPerBag, 400),  % Total profit made
number_of_bags_sold(400, NumBags).  % Number of bags sold
% Uncomment the line below to run the query in SWI-Prolog
% query(NumBags).
%query(NumBags).