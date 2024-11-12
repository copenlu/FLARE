% Define the total amount spent on candy and gumballs
total_spent_candy_gumballs(TotalSpent) :-
TotalSpent is 10.
% Define the amount spent on gumballs
amount_spent_gumballs(TotalSpent, AmountGumballs) :-
AmountGumballs is TotalSpent / 2.
% Define the remaining amount after buying gumballs
remaining_amount(TotalSpent, AmountGumballs, Remaining) :-
Remaining is TotalSpent - AmountGumballs.
% Define the pounds of candy bought based on the remaining amount and price per pound
pounds_of_candy(Remaining, Pounds) :-
Pounds is Remaining / 1.5.
% Query predicate to run the program and get the result
query(Pounds) :-
total_spent_candy_gumballs(TotalSpent),
amount_spent_gumballs(TotalSpent, AmountGumballs),
remaining_amount(TotalSpent, AmountGumballs, Remaining),
pounds_of_candy(Remaining, Pounds).
% Uncomment the following line to run the query
% ?- query(Pounds).
%query(Pounds).