% Define the cost of each item
item_cost(cookie, 1).
item_cost(cupcake, 4).
% Define the quantity sold
quantity_sold(cookie, 80).
quantity_sold(cupcake, 60).
% Define the amount given to each sister
amount_given_to_sister(10).
% Calculate total earnings
total_earnings(Total) :-
quantity_sold(cookie, CookieQty),
quantity_sold(cupcake, CupcakeQty),
item_cost(cookie, CookieCost),
item_cost(cupcake, CupcakeCost),
Total is (CookieQty * CookieCost) + (CupcakeQty * CupcakeCost).
% Calculate total amount given to sisters
total_given_to_sisters(TotalGiven) :-
amount_given_to_sister(Amount),
TotalGiven is Amount * 2.
% Calculate money left after giving to sisters
money_left(MoneyLeft) :-
total_earnings(Earnings),
total_given_to_sisters(Given),
MoneyLeft is Earnings - Given.
% Query predicate to find the money Suzanne has left
query(MoneyLeft) :-
money_left(MoneyLeft).
% Uncomment the line below to run the query
% query(MoneyLeft).
%query(MoneyLeft).