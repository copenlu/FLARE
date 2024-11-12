% Define the relationship between Janey's books and Sally's books
janey_books(JaneyBooks) :-
JaneyBooks is 2 * SallyBooks + 3.
% Given that Janey has 21 books, find out how many books Sally has
sally_books(SallyBooks) :-
janey_books(21), % Janey has 21 books
SallyBooks is (21 - 3) / 2. % Solve for Sally's books
% Query to find out how many books Sally has
query(SallyBooks) :-
sally_books(SallyBooks).
% Uncomment the following line to run the query and calculate the number of books Sally has
% ?- query(SallyBooks).
%query(SallyBooks).