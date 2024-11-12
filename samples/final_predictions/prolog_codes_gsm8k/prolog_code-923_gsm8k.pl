% Define the total capacity of the pot
total_capacity(12).
% Define the number of bowls consumed for dinner
bowls_consumed(6).
% Define the predicate to calculate the leftover soup after dinner
leftover_soup(Leftover) :-
total_capacity(Total),
bowls_consumed(Consumed),
Leftover is Total - Consumed.
% Define the predicate to calculate how many times each child can have a bowl of soup for lunch
times_for_lunch(Times) :-
leftover_soup(Leftover),
Times is Leftover / 2.
% Query predicate to run the program and get the result
query(Times) :-
times_for_lunch(Times).
% Uncomment the following line to run the query
% ?- query(Times).
%query(Times).