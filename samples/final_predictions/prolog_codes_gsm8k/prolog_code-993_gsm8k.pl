% Define the price of each phone based on its position
phone_price(1, 600).
phone_price(2, 600).
phone_price(N, 300) :- N > 2.
% Define the rule to calculate the total cost
total_cost(NumPhones, TotalAmount) :-
findall(Price, phone_price(_, Price), Prices),
sum_list(Prices, TotalAmount).
% Predicate to encapsulate the entire calculation and output the total amount paid by John
calculate_total_cost(TotalAmount) :-
total_cost(4, TotalAmount).  % Assuming John buys phones for himself, his wife, and 2 kids
% Query to find the total amount John paid for all the phones
query(TotalAmount) :-
calculate_total_cost(TotalAmount).
% Uncomment the following line to run the query
% ?- query(TotalAmount).
%query(TotalAmount).