% Define a predicate to calculate the profit based on the cost price
calculate_profit(CostPrice, Profit) :-
% Calculate the selling price by multiplying the cost price by 11/8
SellingPrice is CostPrice * 11 / 8,
% Calculate the profit by subtracting the cost price from the selling price
Profit is SellingPrice - CostPrice.
% Define a query predicate to find out Trinity's profit
query(Profit) :-
% Cost price of the magazines is $72
calculate_profit(72, Profit).
% Uncomment the line below to run the query in SWI-Prolog
% query(Profit).
%query(Profit).