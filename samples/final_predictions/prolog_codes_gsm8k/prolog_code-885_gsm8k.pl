% Define the relationship between the number of gold and silver coins
% Gold = Silver + 30
gold_silver_relationship(Gold, Silver) :-
Gold is Silver + 30.
% Define the total number of coins based on the number of gold coins
% TotalCoins = Gold + Gold + 30 (Gold + Silver)
total_coins(Gold, TotalCoins) :-
TotalCoins is Gold + Gold + 30.
% Define the predicate to find Gretchen's total number of coins
gretchens_total_coins(TotalCoins) :-
gold_silver_relationship(70, Silver),  % Given Gretchen has 70 gold coins
total_coins(70, TotalCoins).
% Query predicate to run the program and get the result
query(TotalCoins) :-
gretchens_total_coins(TotalCoins).
% Uncomment the following line to run the query
% ?- query(TotalCoins).
%query(TotalCoins).