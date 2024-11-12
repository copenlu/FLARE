% Define the relationship between the number of books Sofie has and the number of books Anne has
sofie_books(S, A) :- S is A + 25.
% Define the relationship between the number of books Fawn has and the number of books Anne has
fawn_books(F, A) :- F is A + 12.
% Define the predicate to calculate the total number of books owned by all three
total_books(S, A, F, Total) :- Total is S + A + F.
% Define the predicate representing the given total number of books
total_books_constraint(S, A, F) :- S + A + F = 85.
% Query predicate to find the number of books Fawn has
query(FawnBooks) :-
% Define the relationships and constraints
sofie_books(S, A),
fawn_books(F, A),
total_books(S, A, F, Total),
total_books_constraint(S, A, F),
% Return the number of books Fawn has
FawnBooks is F.
% Uncomment the following line to run the query
% ?- query(FawnBooks).
%query(FawnBooks).