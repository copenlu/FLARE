% Define the predicate to calculate the number of chickens Isaias plans to sell
% Params: TotalChickens, Fraction, ChickensToSell
chickens_to_sell(TotalChickens, Fraction, ChickensToSell) :-
ChickensToSell is TotalChickens * Fraction.
% Define the predicate to calculate the total revenue Isaias expects to make
% Params: ChickensToSell, PricePerChicken, Revenue
total_revenue(ChickensToSell, PricePerChicken, Revenue) :-
Revenue is ChickensToSell * PricePerChicken.
% Define the predicate to calculate the cost price of the chickens Isaias took to the market
% Params: TotalRevenue, Profit, CostPrice
cost_price(TotalRevenue, Profit, CostPrice) :-
CostPrice is TotalRevenue - Profit.
% Main predicate to compute the cost price of the chickens Isaias took to the market for sale
% Params: CostPrice
calculate_cost_price(CostPrice) :-
TotalChickens = 300,  % Total number of chickens on the farm
FractionToSell = 3/5,  % Fraction of chickens to sell
PricePerChicken = 50,  % Selling price per chicken
Profit = 2000,  % Desired profit
% Calculate the number of chickens to sell
chickens_to_sell(TotalChickens, FractionToSell, ChickensToSell),
% Calculate the total revenue Isaias expects to make
total_revenue(ChickensToSell, PricePerChicken, TotalRevenue),
% Calculate the cost price of the chickens Isaias took to the market
cost_price(TotalRevenue, Profit, CostPrice).
% Query predicate to get the cost price of the chickens Isaias took to the market for sale
query(CostPrice) :-
calculate_cost_price(CostPrice).
% Uncomment the following line to run the query
% query(CostPrice).
%query(CostPrice).