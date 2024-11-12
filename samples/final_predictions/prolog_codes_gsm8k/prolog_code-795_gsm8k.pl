% Define the rule to calculate the final price after applying the discount
calculate_final_price(OriginalPrice, DiscountPercentage, FinalPrice) :-
DiscountAmount is OriginalPrice * DiscountPercentage,  % Calculate the discount amount
FinalPrice is OriginalPrice - DiscountAmount.         % Calculate the final price after discount
% Query to find the final price after applying a 20% discount to a laptop priced at $1000
query_final_price(FinalPrice) :-
calculate_final_price(1000, 0.20, FinalPrice).  % Calculate final price with $1000 original price and 20% discount
% Define a predicate that returns the correct numerical answer when queried
query(FinalPrice) :-
query_final_price(FinalPrice).
% Uncomment the following line to run the query
% ?- query(FinalPrice).
%query(FinalPrice).