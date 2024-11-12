% Define the rule to calculate the price of the gold jewel
price_of_gold(DiamondPrice, GoldPrice) :-
GoldPrice is (4/5) * DiamondPrice.
% Define the rule to calculate the price of the silver jewel
price_of_silver(GoldPrice, SilverPrice) :-
SilverPrice is GoldPrice - 400.
% Define the rule to calculate the total price for all three jewels
total_price(DiamondPrice, GoldPrice, SilverPrice, TotalPrice) :-
TotalPrice is DiamondPrice + GoldPrice + SilverPrice.
% Query to find the total price for all three jewels
query_total_price(TotalPrice) :-
price_of_gold(2000, GoldPrice),  % Given DiamondPrice is $2000
price_of_silver(GoldPrice, SilverPrice),
total_price(2000, GoldPrice, SilverPrice, TotalPrice).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_total_price(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).