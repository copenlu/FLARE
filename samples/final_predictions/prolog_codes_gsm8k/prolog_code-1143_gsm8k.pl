% Define the known values
total_budget(16).  % Assumed total budget
num_books_bought(2).  % Assumed number of books bought
remaining_budget(2).  % Assumed remaining budget
% Define the predicate to calculate the cost of each book
cost_per_book(Cost) :-
amount_spent(AmountSpent),
remaining_budget(RemainingBudget),
num_books_bought(NumBooks),
Cost is (AmountSpent - RemainingBudget) / NumBooks.
% Query predicate to find the cost of each book
query(Cost) :-
cost_per_book(Cost).
% Uncomment the line below to run the query
% ?- query(Cost).
%query(Cost).