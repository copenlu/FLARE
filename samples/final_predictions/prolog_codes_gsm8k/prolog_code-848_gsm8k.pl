% Define the weight of the book in pounds
book_weight(4).
% Define the cost of the book in dollars
book_cost(32).
% Define the distance to the distribution center in miles
distance_to_center(20).
% Calculate the cost of shipping the book back
shipping_cost(ShippingCost) :-
book_weight(Weight),
distance_to_center(Distance),
ShippingCost is Weight * 0.35 + Distance * 0.08.
% Calculate the refund amount from Amazon (75% of the book's cost)
refund_amount(RefundAmount) :-
book_cost(Cost),
RefundAmount is Cost * 0.75.
% Calculate the total loss for Milly
total_loss(TotalLoss) :-
refund_amount(Refund),
shipping_cost(Shipping),
TotalLoss is Refund - Shipping.
% Query predicate to find the total loss for Milly
query(TotalLoss) :-
total_loss(TotalLoss).
% Uncomment the line below to run the query
% query(TotalLoss).
%query(TotalLoss).