% Define the cost per book
cost_per_book(15).
% Calculate the number of books each child received
calculate_books_per_child(TotalAmount, CostPerBook, NumKids, BooksPerChild) :-
TotalBooks is TotalAmount / CostPerBook,
BooksPerChild is TotalBooks / NumKids.
% Query to calculate the number of books each child received
query(BooksPerChild) :-
TotalAmount = 300,  % Total amount spent on books
NumKids = 4,        % Number of kids
cost_per_book(CostPerBook),  % Cost per book
calculate_books_per_child(TotalAmount, CostPerBook, NumKids, BooksPerChild).
% Uncomment the following line to run the query and calculate the number of books each child received
% ?- query(BooksPerChild).
%query(BooksPerChild).