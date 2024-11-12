% Define the rule for calculating the total earnings from selling cupcakes
calculate_cupcake_earnings(CupcakesSold, CupcakePrice, TotalCupcakeEarnings) :-
TotalCupcakeEarnings is CupcakesSold * CupcakePrice.
% Define the rule for calculating the total earnings from selling cookies
calculate_cookie_earnings(CookiesSold, CookiePrice, TotalCookieEarnings) :-
TotalCookieEarnings is CookiesSold * CookiePrice.
% Define the rule for calculating the total cost of buying trays
calculate_tray_cost(TraysBought, TrayPrice, TotalTrayCost) :-
TotalTrayCost is TraysBought * TrayPrice.
% Define the rule for calculating the money Frances has left
money_left(CupcakesSold, CupcakePrice, CookiesSold, CookiePrice, TraysBought, TrayPrice, MoneyLeft) :-
calculate_cupcake_earnings(CupcakesSold, CupcakePrice, TotalCupcakeEarnings),
calculate_cookie_earnings(CookiesSold, CookiePrice, TotalCookieEarnings),
calculate_tray_cost(TraysBought, TrayPrice, TotalTrayCost),
MoneyLeft is TotalCupcakeEarnings + TotalCookieEarnings - TotalTrayCost.
% Define a predicate to execute the specific query with given values
query(MoneyLeft) :-
money_left(20, 2, 40, 1, 5, 4, MoneyLeft).
% Uncomment the line below to run the query
% ?- query(MoneyLeft).
%query(MoneyLeft).