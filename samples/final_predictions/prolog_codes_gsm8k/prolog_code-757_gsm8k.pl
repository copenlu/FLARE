% Define the number of books Clara has
books_clara(20).
% Calculate the number of books Steven has (assumed known)
books_steven(10).  % Assumed number of books Steven has
% Calculate the number of books Alice has (6 more than Steven)
books_alice(BooksAlice) :-
books_steven(BooksSteven),
BooksAlice is BooksSteven + 6.
% Calculate the difference in the number of books between Clara and Alice
difference_clara_alice(Difference) :-
books_clara(BooksClara),
books_alice(BooksAlice),
Difference is BooksClara - BooksAlice.
% Query predicate to find the difference in books between Clara and Alice
query(Difference) :-
difference_clara_alice(Difference).
% Uncomment the line below to run the query
% query(Difference).
%query(Difference).