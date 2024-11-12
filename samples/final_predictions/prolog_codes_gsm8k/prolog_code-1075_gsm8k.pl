% Define the rule to calculate the number of Spanish books
spanish_books(TotalBooks, SpanishBooks) :-
EnglishBooks is TotalBooks / 2,      % Calculate the number of books written in English
GermanBooks is TotalBooks * 0.10,    % Calculate the number of books written in German
SpanishBooks is TotalBooks - EnglishBooks - GermanBooks.  % Calculate the number of books written in Spanish
% Query to find the number of Spanish books when there are 50 total books
query_spanish_books(SpanishBooks) :-
spanish_books(50, SpanishBooks).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_spanish_books(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).