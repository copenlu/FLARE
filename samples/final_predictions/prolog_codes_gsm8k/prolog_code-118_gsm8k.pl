% Define original prices of boards
original_price(2x4x10, 10).
original_price(4x4x10, 16).
% Calculate selling price after 50% increase
selling_price(Item, OriginalPrice, SellingPrice) :-
SellingPrice is OriginalPrice * 1.5.
% Calculate profit from selling leftover boards
calculate_profit(Profit) :-
original_price(2x4x10, OriginalPrice1),
original_price(4x4x10, OriginalPrice2),
selling_price(2x4x10, OriginalPrice1, SellingPrice1),
selling_price(4x4x10, OriginalPrice2, SellingPrice2),
TotalCost is 10 * OriginalPrice1 + 5 * OriginalPrice2,
TotalRevenue is 10 * SellingPrice1 + 5 * SellingPrice2,
Profit is TotalRevenue - TotalCost.
% Query to calculate the profit Sasha makes
query(Profit) :-
calculate_profit(Profit).
% Uncomment the following line to run the query and calculate the profit
% ?- query(Profit).
%query(Profit).