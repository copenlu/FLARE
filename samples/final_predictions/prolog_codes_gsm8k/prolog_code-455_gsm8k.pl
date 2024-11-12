% Predicate to convert hours to minutes
convert_hours_to_minutes(Hours, Minutes) :- Minutes is Hours * 60.
% Predicate to calculate the length of Movie C in minutes
length_movie_c(C) :- convert_hours_to_minutes(1.25, C).
% Predicate to calculate the length of Movie B in minutes
length_movie_b(B, C) :- length_movie_c(C), B is C + 5.
% Predicate to calculate the length of Movie A in minutes
length_movie_a(A, B) :- length_movie_b(B, _), A is B / 4.
% Main predicate to calculate the length of Movie A
movie_lengths(A) :-
length_movie_a(A, _).
% Query to find out the length of Movie A in minutes
query(A) :-
movie_lengths(A).
% Uncomment the following line to run the query
% ?- query(A).
%query(A).