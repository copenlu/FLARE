% Define the rule to calculate total sales from green hats
total_sales_green_hats(RedHatSales, TotalSalesGreenHats) :-
TotalSalesGreenHats is RedHatSales * 2.
% Define the rule to calculate total sales in the first month
total_sales_first_month(RedHatSales, TotalSalesFirstMonth) :-
total_sales_green_hats(RedHatSales, TotalSalesGreenHats),
TotalSalesFirstMonth is RedHatSales + TotalSalesGreenHats.
% Define the rule to calculate total sales in the second month
total_sales_second_month(TotalSalesFirstMonth, TotalSalesSecondMonth) :-
TotalSalesSecondMonth is TotalSalesFirstMonth * 3 / 4.
% Define the rule to calculate total sales in two months
total_sales_two_months(TotalSalesFirstMonth, TotalSalesSecondMonth, TotalSalesTwoMonths) :-
TotalSalesTwoMonths is TotalSalesFirstMonth + TotalSalesSecondMonth.
% Query to find the total amount Ariadne made in two months
query_total_sales_two_months(TotalSalesTwoMonths) :-
total_sales_first_month(400, TotalSalesFirstMonth),  % Sales from red hats are $400
total_sales_second_month(TotalSalesFirstMonth, TotalSalesSecondMonth),
total_sales_two_months(TotalSalesFirstMonth, TotalSalesSecondMonth, TotalSalesTwoMonths).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_total_sales_two_months(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).