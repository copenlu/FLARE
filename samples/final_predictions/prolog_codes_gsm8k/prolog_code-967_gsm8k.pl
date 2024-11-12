% Define the total cost before discount
total_cost_before_discount(NumCDs, CostPerCD, TotalCost) :-
TotalCost is NumCDs * CostPerCD.
% Define the total cost after discount
total_cost_after_discount(TotalCostBeforeDiscount, DiscountPercentage, TotalCostAfterDiscount) :-
TotalCostAfterDiscount is TotalCostBeforeDiscount * (1 - DiscountPercentage/100).
% Define the total amount received from selling CDs
total_amount_received(NumCDsSold, PricePerCD, TotalAmountReceived) :-
TotalAmountReceived is NumCDsSold * PricePerCD.
% Define the total amount James was out
total_amount_out(TotalCostAfterDiscount, TotalAmountReceived, TotalAmountOut) :-
TotalAmountOut is TotalCostAfterDiscount - TotalAmountReceived.
% Predicate to encapsulate the entire calculation and output the total amount James was out
calculate_total_amount_out(TotalAmountOut) :-
total_cost_before_discount(10, 15, TotalCostBeforeDiscount),  % Assumed atom/predicate
total_cost_after_discount(TotalCostBeforeDiscount, 40, TotalCostAfterDiscount),  % Assumed atom/predicate
total_amount_received(5, 40, TotalAmountReceived),  % Assumed atom/predicate
total_amount_out(TotalCostAfterDiscount, TotalAmountReceived, TotalAmountOut).
% Query to find the total amount James was out
query(TotalAmountOut) :-
calculate_total_amount_out(TotalAmountOut).
% Uncomment the following line to run the query
% ?- query(TotalAmountOut).
%query(TotalAmountOut).