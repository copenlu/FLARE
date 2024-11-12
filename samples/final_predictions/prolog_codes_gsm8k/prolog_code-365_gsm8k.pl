% Define the predicate to calculate the total cost of toy cars
total_cost_toy_cars(Cost) :-
Cost is 6 * 2.  % Each toy car costs $2
% Define the predicate to calculate the total cost of teddy bears
total_cost_teddy_bears(Cost) :-
Cost is 5 * 1.  % Each teddy bear costs $1
% Define the predicate to calculate the total amount spent on toys
total_amount_spent(Total) :-
total_cost_toy_cars(Cost1),
total_cost_teddy_bears(Cost2),
Total is Cost1 + Cost2.
% Define the initial amount given by Dean's mother
initial_amount(28).
% Define the predicate to calculate the final amount Dean has left after receiving the extra $10
final_amount_left(AmountLeft) :-
initial_amount(InitialAmount),
total_amount_spent(TotalSpent),
AmountLeft is InitialAmount + 10 - TotalSpent.
% Query predicate to run the program and get the result
query(AmountLeft) :-
final_amount_left(AmountLeft).
% Uncomment the following line to run the query
% ?- query(AmountLeft).
%query(AmountLeft).