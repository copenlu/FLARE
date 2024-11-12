% Define the number of vanilla scents sold per type
total_sales_vanilla(5).
% Define the number of fruity scents sold per type
total_sales_fruity(2).
% Calculate the total sales of vanilla scents
total_sales_vanilla(TotalVanillaSales) :-
TotalVanillaSales is 4 * 5.  % 4 types of vanilla scents sold 5 each
% Calculate the total sales of fruity scents
total_sales_fruity(TotalFruitySales) :-
TotalFruitySales is 8 * 2.   % 8 types of fruity scents sold 2 each
% Calculate the difference in sales between vanilla and fruity scents
sales_difference(Difference) :-
total_sales_vanilla(TotalVanillaSales),
total_sales_fruity(TotalFruitySales),
Difference is TotalVanillaSales - TotalFruitySales.
% Query predicate to find the difference in sales between vanilla and fruity scents
query(Difference) :-
sales_difference(Difference).
% Uncomment the line below to run the query
% query(Difference).
%query(Difference).