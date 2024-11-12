% Define the prices of items
sub_price(7.50).
chips_price(1.50).
cookie_price(1.00).
% Calculate the total cost of the items ordered
total_cost_of_items(TotalCost) :-
sub_price(SubPrice),
chips_price(ChipsPrice),
cookie_price(CookiePrice),
TotalCost is (2 * SubPrice) + (2 * ChipsPrice) + (2 * CookiePrice).
% Calculate the delivery fee
delivery_fee(TotalCost, DeliveryFee) :-
DeliveryFee is 0.2 * TotalCost.
% Calculate the final delivery order cost
delivery_order_cost(TotalCost, Tip, FinalCost) :-
delivery_fee(TotalCost, DeliveryFee),
FinalCost is TotalCost + DeliveryFee + Tip.
% Calculate Rory's delivery order cost
calculate_delivery_order_cost(FinalCost) :-
total_cost_of_items(TotalCost),
Tip = 5.00,
delivery_order_cost(TotalCost, Tip, FinalCost).
% Query to find Rory's delivery order cost
query(FinalCost) :-
calculate_delivery_order_cost(FinalCost).
% Uncomment the following line to run the query and find out Rory's delivery order cost
% ?- query(FinalCost).
%query(FinalCost).