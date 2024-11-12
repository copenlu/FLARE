% Define the rule to calculate the total number of books Wendy needs to carry
total_books_to_carry(TotalBooks) :-
TotalBooksInShelvingSystem is 6 * 6,  % Calculate the total number of books that can fit in the shelving system
DoubleTotalBooks is TotalBooksInShelvingSystem * 2,  % Double the total number of books
TotalBooks is DoubleTotalBooks + 20.  % Add 20 to the doubled number of books to get the total
% Query to find the total number of books Wendy needs to carry
query_total_books_to_carry(TotalBooks) :-
total_books_to_carry(TotalBooks).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_total_books_to_carry(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).