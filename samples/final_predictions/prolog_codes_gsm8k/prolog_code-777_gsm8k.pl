% Define the rule to calculate the final price after discount
calculate_final_price(OriginalPrice, DiscountRate, FinalPrice) :-
DiscountAmount is OriginalPrice * DiscountRate,  % Calculate the discount amount
FinalPrice is OriginalPrice - DiscountAmount.    % Calculate the final price after discount
% Query to find the final price after a 5% discount on a bag marked at $140
query_final_price(FinalPrice) :-
OriginalPrice = 140,    % Assumed original price of the bag
DiscountRate = 0.05,    % Assumed discount rate of 5%
calculate_final_price(OriginalPrice, DiscountRate, FinalPrice).
% Define a predicate that returns the correct numerical answer when queried
query(FinalPrice) :-
query_final_price(FinalPrice).
% Uncomment the following line to run the query
% ?- query(FinalPrice).
%query(FinalPrice).