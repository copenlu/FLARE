% Predicate to calculate half of the letters in a name
half_letters(Indras, Half) :-
Half is Indras // 2.
% Predicate to calculate the number of letters in Indras' sister's name
sister_letters(Half, Sister) :-
Sister is Half + 4.
% Main predicate to calculate the number of letters in Indras' and her sister's names
sisters_names(Indras, Sister) :-
Indras = 6, % Assumed atom/predicate
half_letters(Indras, Half),
sister_letters(Half, Sister).
% Query to find out the number of letters in Indras' and her sister's names
query(Indras, Sister) :-
sisters_names(Indras, Sister).
% Uncomment the following line to run the query
% ?- query(Indras, Sister).
%query(Indras, Sister).