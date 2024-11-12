% Define the cost of the order
order_cost(15).
% Calculate the tip amount and total amount to give to the delivery man
calculate_tip(TipAmount, TotalAmount) :-
order_cost(OrderCost),
TipAmount is OrderCost / 5,
TotalAmount is OrderCost + TipAmount.
% Query to calculate the total amount to give to the delivery man
query(TotalAmount) :-
calculate_tip(_, TotalAmount).
% Uncomment the following line to run the query and calculate the total amount to give to the delivery man
% ?- query(TotalAmount).
%query(TotalAmount).