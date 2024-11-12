% Define the total number of coins
calculate_coins(Gold, Silver) :-
Gold + Silver =:= 110.
% Solve the system of equations to find the number of gold coins
solve_equations(TotalCoins, Gold, Silver) :-
Gold is Silver + 30,
Gold + Silver =:= TotalCoins.
% Predicate to encapsulate the entire calculation and output the number of gold coins Gretchen has
calculate_gold_coins(GoldCoins) :-
solve_equations(110, Gold, Silver),  % Total coins is 110
GoldCoins is Gold.
% Query to find the number of gold coins Gretchen has
query(GoldCoins) :-
calculate_gold_coins(GoldCoins).
% Uncomment the following line to run the query
% ?- query(GoldCoins).
%query(GoldCoins).