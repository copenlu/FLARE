% Define the prices of each bakery item
price(croissant, 3.00).
price(cinnamon_roll, 2.50).
price(mini_quiche, 4.00).
price(blueberry_muffin, 1.00).
% Calculate the total cost before discount
total_cost_before_discount(TotalCost) :-
price(croissant, CroissantPrice),
price(cinnamon_roll, CinnamonRollPrice),
price(mini_quiche, MiniQuichePrice),
price(blueberry_muffin, BlueberryMuffinPrice),
TotalCost is (5 * CroissantPrice) + (4 * CinnamonRollPrice) + (3 * MiniQuichePrice) + (13 * BlueberryMuffinPrice).
% Calculate the discounted amount after applying a 10% discount
discounted_amount(TotalCost, DiscountedAmount) :-
DiscountedAmount is TotalCost * 0.9.  % 10% discount applied (90% of total cost)
% Query predicate to find Marcus' total bill after the discount
query(TotalBill) :-
total_cost_before_discount(TotalCost),
discounted_amount(TotalCost, TotalBill).
% Uncomment the line below to run the query
% query(TotalBill).
%query(TotalBill).