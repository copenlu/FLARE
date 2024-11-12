% Define the rule to calculate the money left over
calculate_leftover(OriginalPrice, DiscountPercentage, BillAmount, LeftOver) :-
DiscountAmount is OriginalPrice * DiscountPercentage / 100,
FinalPrice is OriginalPrice - DiscountAmount,
LeftOver is BillAmount - FinalPrice.
% Define the values given in the problem
original_price(40).
discount_percentage(25).
bill_amount(50).
% Calculate the money left over
calculate_leftover(40, 25, 50, LeftOver).
% Query to calculate the money left over
query(LeftOver) :-
calculate_leftover(40, 25, 50, LeftOver).
% Uncomment the following line to run the query and calculate the money left over
% ?- query(LeftOver).
%query(LeftOver).