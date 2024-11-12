% Define a predicate to calculate the selling price per watermelon
selling_price_per_watermelon(TotalWatermelons, TotalCost, ProfitMargin, SellingPrice) :-
% Calculate the cost per watermelon
TotalCostPerWatermelon is TotalCost / TotalWatermelons,
% Calculate the profit amount per watermelon
ProfitAmount is TotalCostPerWatermelon * ProfitMargin,
% Calculate the total revenue from selling all watermelons
TotalRevenue is TotalCost + ProfitAmount,
% Calculate the selling price per watermelon
SellingPrice is TotalRevenue / TotalWatermelons.
% Define a query predicate to find out the selling price per watermelon
query(SellingPrice) :-
% Total watermelons bought = 50, total cost = $80, profit margin = 25%
selling_price_per_watermelon(50, 80, 0.25, SellingPrice).
% Uncomment the line below to run the query in SWI-Prolog
% query(SellingPrice).
%query(SellingPrice).