% Define prices of fruits
price(apple, 0.5).
price(banana, 1).
price(orange, 3).
% Define quantities in the crate
quantity(apple, 12).
quantity(banana, 5).
quantity(orange, 7).
% Calculate total price for each type of fruit
total_price(Fruit, TotalPrice) :-
price(Fruit, PricePerPiece),
quantity(Fruit, Quantity),
TotalPrice is PricePerPiece * Quantity.
% Calculate total price of the crate
calculate_crate_price(TotalPrice) :-
total_price(apple, TotalApplePrice),
total_price(banana, TotalBananaPrice),
total_price(orange, TotalOrangePrice),
TotalPrice is TotalApplePrice + TotalBananaPrice + TotalOrangePrice.
% Query to calculate the price of the crate of fruit
query(TotalPrice) :-
calculate_crate_price(TotalPrice).
% Uncomment the following line to run the query and calculate the price of the crate
% ?- query(TotalPrice).
%query(TotalPrice).