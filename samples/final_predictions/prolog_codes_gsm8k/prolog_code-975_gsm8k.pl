% Define the rule for calculating total pages in the book
total_pages_in_book(PagesPerInch, ThicknessInInches, TotalPages) :-
PagesPerPaper is PagesPerInch * 2,
TotalPages is PagesPerPaper * ThicknessInInches.
% Calculate the total number of pages in the book
% Given: 100 pages to the inch, 1.5 inches thick
query(TotalPages) :-
total_pages_in_book(100, 1.5, TotalPages).
% Uncomment the line below to run the query
% ?- query(TotalPages).
%query(TotalPages).