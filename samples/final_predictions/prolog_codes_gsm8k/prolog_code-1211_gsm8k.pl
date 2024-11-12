% Define the rule to calculate total number of books Bob can buy
% Params: Budget, PricePerBook, TotalBooks
total_books(Budget, PricePerBook, TotalBooks) :-
TotalBooks is Budget / PricePerBook * 100.
% Define the rule to calculate number of books per school
% Params: TotalBooks, NumSchools, BooksPerSchool
books_per_school(TotalBooks, NumSchools, BooksPerSchool) :-
BooksPerSchool is TotalBooks / NumSchools.
% Main predicate to compute the number of books Bob can buy per school
% Params: BooksPerSchool
calculate_books_per_school(BooksPerSchool) :-
% Constants
Budget = 27000,
PricePerBook = 500,
NumSchools = 3,
% Calculate total number of books Bob can buy
total_books(Budget, PricePerBook, TotalBooks),
% Calculate number of books per school
books_per_school(TotalBooks, NumSchools, BooksPerSchool).
% Query predicate to get the number of books Bob can buy per school
query(BooksPerSchool) :-
calculate_books_per_school(BooksPerSchool).
% Uncomment the following line to run the query
% query(BooksPerSchool).
%query(BooksPerSchool).