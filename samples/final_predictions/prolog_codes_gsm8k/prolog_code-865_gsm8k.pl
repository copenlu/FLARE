% Define the number of dishes Jack has collected
dishes_jack(60).
% Calculate the number of socks Jack has (half the number of dishes)
socks_jack(SocksJack) :-
dishes_jack(DishesJack),
SocksJack is DishesJack // 2.
% Calculate the number of socks Peter has (twice the number of Jack's socks)
socks_peter(SocksPeter) :-
socks_jack(SocksJack),
SocksPeter is SocksJack * 2.
% Calculate the number of dishes Peter has (half the number of Jack's dishes)
dishes_peter(DishesPeter) :-
dishes_jack(DishesJack),
DishesPeter is DishesJack // 2.
% Calculate the total number of socks for Jack and Peter
total_socks(TotalSocks) :-
socks_jack(SocksJack),
socks_peter(SocksPeter),
TotalSocks is SocksJack + SocksPeter.
% Calculate the total number of dishes for Jack and Peter
total_dishes(TotalDishes) :-
dishes_jack(DishesJack),
dishes_peter(DishesPeter),
TotalDishes is DishesJack + DishesPeter.
% Query predicate to find the total number of socks and dishes for Jack and Peter
query(TotalSocks, TotalDishes) :-
total_socks(TotalSocks),
total_dishes(TotalDishes).
% Uncomment the line below to run the query
% query(TotalSocks, TotalDishes).
%query(TotalSocks, TotalDishes).