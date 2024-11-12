% Predicate to calculate the price of the soup
price_soup(BagelPrice, SoupPrice) :-
SoupPrice is BagelPrice * 1.25.
% Predicate to calculate the price of the cake
price_cake(BagelPrice, CakePrice) :-
CakePrice is BagelPrice / 2.
% Predicate to calculate the total cost of the dinner
total_cost(BagelPrice, SoupPrice, CakePrice, TotalCost) :-
TotalCost is BagelPrice + SoupPrice + CakePrice.
% Main predicate to calculate the total cost of Aleksandra's dinner
aleksandra_dinner_cost(TotalCost) :-
BagelPrice is 4, % Assumed atom/predicate
price_soup(BagelPrice, SoupPrice),
price_cake(BagelPrice, CakePrice),
total_cost(BagelPrice, SoupPrice, CakePrice, TotalCost).
% Query to find out how much Aleksandra needed to pay for the dinner
query(TotalCost) :-
aleksandra_dinner_cost(TotalCost).
% Uncomment the following line to run the query
% ?- query(TotalCost).
%query(TotalCost).