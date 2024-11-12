% Define the predicate to calculate the total number of books sold in the first year
books_sold_first_year(TotalBooksFirstYear) :-
books_sold_current_year(BooksSoldCurrentYear),
TotalBooksFirstYear is 2 * BooksSoldCurrentYear.
% Define the predicate to calculate the total number of books sold in the current year
books_sold_current_year(BooksSoldCurrentYear) :-
BooksSoldCurrentYear is 250 - 50 - 45.
% Define the predicate to calculate the total number of books sold in the second year
books_sold_second_year(BooksSoldSecondYear) :-
books_sold_first_year(TotalBooksFirstYear),
books_sold_current_year(BooksSoldCurrentYear),
BooksSoldSecondYear is TotalBooksFirstYear - BooksSoldCurrentYear.
% Define the predicate to calculate the total amount of money earned in the second year
money_earned_second_year(TotalMoneySecondYear) :-
books_sold_second_year(BooksSoldSecondYear),
TotalMoneySecondYear is BooksSoldSecondYear * 20.
% Query predicate to run the program and get the result
query(TotalMoneySecondYear) :-
money_earned_second_year(TotalMoneySecondYear).
% Uncomment the following line to run the query
% ?- query(TotalMoneySecondYear).
%query(TotalMoneySecondYear).