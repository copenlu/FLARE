% Define the total number of pairs purchased in a year
total_pairs_purchased(24).
% Define the total amount spent on shoes in a year
total_amount_spent(2640).
% Calculate the average price per pair of shoes
average_price_per_pair(TotalPairs, TotalAmountSpent, AveragePrice) :-
AveragePrice is TotalAmountSpent / TotalPairs.
% Query predicate to find the average price per pair of shoes
query(AveragePrice) :-
total_pairs_purchased(TotalPairs),
total_amount_spent(TotalAmountSpent),
average_price_per_pair(TotalPairs, TotalAmountSpent, AveragePrice).
% Uncomment the line below to run the query
% query(AveragePrice).
%query(AveragePrice).