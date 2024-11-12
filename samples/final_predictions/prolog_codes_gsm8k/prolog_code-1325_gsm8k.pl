% Define the rule for calculating total revenue
total_revenue(ProductionRate, SellingPrice, TotalRevenue) :-
DaysInTwoWeeks is 14,
TotalBarsProduced is ProductionRate * DaysInTwoWeeks,
TotalRevenue is TotalBarsProduced * SellingPrice.
% Define a predicate to execute the specific query with given values
query(TotalRevenue) :-
% Assumed values: production rate of 5000 bars/day, selling price of $2/bar
total_revenue(5000, 2, TotalRevenue).
% Uncomment the line below to run the query
% ?- query(TotalRevenue).
%query(TotalRevenue).