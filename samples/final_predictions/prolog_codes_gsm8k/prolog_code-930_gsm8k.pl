% Define the rule to calculate the current number of books Joseph has
current_books(JosephBooks) :-
SarahBooks = 9,                             % Assumed number of books Sarah has
JosephInitialBooks is SarahBooks * 2,       % Calculate Joseph's initial number of books
JosephBooks is JosephInitialBooks - 2.      % Calculate Joseph's current number of books
% Query to find the current number of books Joseph has
query_current_books(JosephBooks) :-
current_books(JosephBooks).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_current_books(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).