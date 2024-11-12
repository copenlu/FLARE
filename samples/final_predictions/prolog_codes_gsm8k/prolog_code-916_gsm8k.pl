% Define the earnings for mowing Kamala's lawn
earnings_kamala(Earnings) :- Earnings is 3 * X.  % Assumed atom/predicate: X represents the payment for mowing Joe's lawn
% Define the earnings for mowing Joe's lawn
earnings_joe(Earnings) :- Earnings is X + 6.  % Assumed atom/predicate: X represents the payment for mowing Joe's lawn
% Define the earnings for mowing Alba's lawn
earnings_alba(Earnings) :- Earnings is 5 * X.  % Assumed atom/predicate: X represents the payment for mowing Joe's lawn
% Calculate the total earnings from mowing lawns and Joe's payment
total_earnings(Total) :-
earnings_kamala(Kamala),
earnings_joe(Joe),
earnings_alba(Alba),
Total is Kamala + Joe + Alba.
% Calculate the amount Tasha made from selling lemonade
lemonade_sales(Lemonade) :-
total_earnings(Total),
Lemonade is 80 - Total.
% Query predicate to run the program and get the result
query(Lemonade) :-
lemonade_sales(Lemonade).
% Uncomment the following line to run the query
% ?- query(Lemonade).
%query(Lemonade).