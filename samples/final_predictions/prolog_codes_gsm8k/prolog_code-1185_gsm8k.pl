% Define the selling price of a mobile device
selling_price(BuyingPrice, SellingPrice) :-
SellingPrice is BuyingPrice * 2.
% Define the total profit earned from selling all devices bought on Monday and Tuesday
total_profit(DevicesBoughtMonday, DevicesBoughtTuesday, Profit) :-
BuyingPrice = 20,  % Assumed atom/predicate
selling_price(BuyingPrice, SellingPrice),
TotalBuyingPrice is (DevicesBoughtMonday + DevicesBoughtTuesday) * BuyingPrice,
TotalSellingPrice is (DevicesBoughtMonday * SellingPrice) + (DevicesBoughtTuesday * SellingPrice),
Profit is TotalSellingPrice - TotalBuyingPrice.
% Main predicate to compute the total profit for Linus
calculate_total_profit(Profit) :-
% Number of devices bought on Monday and Tuesday
DevicesBoughtMonday = 2,
DevicesBoughtTuesday = 4,
% Calculate the total profit
total_profit(DevicesBoughtMonday, DevicesBoughtTuesday, Profit).
% Query predicate to get the total profit earned by Linus
query(Profit) :-
calculate_total_profit(Profit).
% Uncomment the following line to run the query
% query(Profit).
%query(Profit).