% Define a predicate to calculate the final price of the toy after December increase and January decrease
final_toy_price(InitialPrice, FinalPrice) :-
% Calculate the price after the December increase
DecemberPrice is InitialPrice + (InitialPrice * 0.80),
% Calculate the final price after the January decrease
FinalPrice is DecemberPrice - (DecemberPrice * 0.50).
% Define a query predicate to find out the final price of the toy after the January discount
query(FinalPrice) :-
% Initial price of the toy in November was $40
final_toy_price(40, FinalPrice).
% Uncomment the line below to run the query in SWI-Prolog
% query(FinalPrice).
%query(FinalPrice).