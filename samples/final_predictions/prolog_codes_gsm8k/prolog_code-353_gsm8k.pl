% Define the predicate to calculate the price of Juice Box B based on the price of Juice Box A
price_b(A, B) :-
B is A + 5.
% Define the predicate to calculate the price of Juice Box C based on the price of Juice Box A
price_c(A, C) :-
C is A + 7.
% Define the predicate to calculate the price difference between Juice Box C and Juice Box B
price_difference(A, Difference) :-
price_b(A, PriceB),  % Calculate the price of Juice Box B
price_c(A, PriceC),  % Calculate the price of Juice Box C
Difference is PriceC - PriceB.  % Calculate the price difference
% Query predicate to run the program and get the result
query(Difference) :-
price_difference(4, Difference).  % Given that Juice Box A is $4
% Uncomment the following line to run the query
% ?- query(Difference).
%query(Difference).