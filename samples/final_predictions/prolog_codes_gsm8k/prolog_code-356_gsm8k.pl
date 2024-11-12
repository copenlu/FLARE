% Define the predicate to calculate the final price after applying the discount
calculate_discounted_price(OriginalPrice, DiscountPercentage, FinalPrice) :-
DiscountedAmount is OriginalPrice * DiscountPercentage,  % Calculate the amount saved with the discount
FinalPrice is OriginalPrice - DiscountedAmount.  % Calculate the final price after deducting the discount
% Define the values for the original price and discount percentage
OriginalPrice = 60,  % Original price of 2 shirts ($30 each)
DiscountPercentage = 0.40.  % 40% discount
% Query predicate to run the program and get the result
query(FinalPrice) :-
calculate_discounted_price(OriginalPrice, DiscountPercentage, FinalPrice).
% Uncomment the following line to run the query
% ?- query(FinalPrice).
%query(FinalPrice).