% Define the original and discounted prices
original_price(ice_cream, 13).
discounted_price(ice_cream, 11).
discounted_price(milk, 0.5).
% Calculate the total cost of purchasing 2 tubs of ice cream at the discounted price
total_cost_ice_cream(TotalCost) :-
discounted_price(ice_cream, Price),
TotalCost is 2 * Price.
% Calculate the total cost of purchasing 4 packets of milk at the discounted price
total_cost_milk(TotalCost) :-
discounted_price(milk, Price),
TotalCost is 4 * Price.
% Calculate the total savings
total_savings(Savings) :-
original_price(ice_cream, IceCreamOriginalPrice),
original_price(milk, MilkOriginalPrice),
discounted_price(ice_cream, IceCreamDiscountedPrice),
discounted_price(milk, MilkDiscountedPrice),
TotalOriginalCost is 2 * IceCreamOriginalPrice + 4 * MilkOriginalPrice,
TotalDiscountedCost is 2 * IceCreamDiscountedPrice + 4 * MilkDiscountedPrice,
Savings is TotalOriginalCost - TotalDiscountedCost.
% Query predicate to run the program and get the result
query(Savings) :-
total_savings(Savings).
% Uncomment the following line to run the query
% ?- query(Savings).
%query(Savings).