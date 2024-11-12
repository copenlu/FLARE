% Define the rule to calculate the original price before discount
original_price(DiscountedPrice, OriginalPrice) :-
OriginalPrice is DiscountedPrice / (1 - 0.25).  % 25% discount
% Calculate the original price of the book
calculate_original_price(OriginalPrice) :-
original_price(19.50, OriginalPrice).  % Given discounted price
% Query to find the original price of the book
query(OriginalPrice) :-
calculate_original_price(OriginalPrice).
% Uncomment the following line to run the query
% ?- query(OriginalPrice).
%query(OriginalPrice).