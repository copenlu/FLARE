% Define the number of shoes sold on Friday
friday_sales(14).
% Define the number of shoes sold on Saturday based on Friday sales
saturday_sales(SaturdaySales) :-
friday_sales(FridaySales),
SaturdaySales is 2 * FridaySales.
% Define the number of shoes sold on Sunday based on Saturday sales
sunday_sales(SundaySales) :-
saturday_sales(SaturdaySales),
SundaySales is SaturdaySales / 2.
% Define the number of shoes returned
shoes_returned(6).
% Calculate the total number of shoes sold by the end of the sale
total_sales(TotalSales) :-
friday_sales(FridaySales),
saturday_sales(SaturdaySales),
sunday_sales(SundaySales),
shoes_returned(ReturnedShoes),
TotalSales is FridaySales + SaturdaySales + SundaySales - ReturnedShoes.
% Query to find out the total number of tennis shoes sold by the end of the sale
query(TotalSales) :-
total_sales(TotalSales).
% Uncomment the following line to run the query
% ?- query(TotalSales).
%query(TotalSales).