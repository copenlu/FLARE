% Define predicates for calculating total sales for each item
total_milkshake_sales(TotalMilkshakeSales) :-
Quantity = 6,       % Assumed atom/predicate
Price = 5.50,       % Assumed atom/predicate
TotalMilkshakeSales is Quantity * Price.
total_burger_platter_sales(TotalBurgerPlatterSales) :-
Quantity = 9,       % Assumed atom/predicate
Price = 11,         % Assumed atom/predicate
TotalBurgerPlatterSales is Quantity * Price.
total_soda_sales(TotalSodaSales) :-
Quantity = 20,      % Assumed atom/predicate
Price = 1.50,       % Assumed atom/predicate
TotalSodaSales is Quantity * Price.
% Define a predicate to calculate the total sales amount
total_sales(TotalSales) :-
total_milkshake_sales(MilkshakeSales),
total_burger_platter_sales(BurgerPlatterSales),
total_soda_sales(SodaSales),
TotalSales is MilkshakeSales + BurgerPlatterSales + SodaSales.
% Query to find the total amount of money Terry makes
query_total_sales(TotalSales) :-
total_sales(TotalSales).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_total_sales(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).