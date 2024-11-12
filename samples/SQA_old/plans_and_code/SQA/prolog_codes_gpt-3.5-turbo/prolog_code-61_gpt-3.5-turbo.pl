% Define ideal attributes for Psylocke
ideal_height(5.11).  % in feet
ideal_weight(130).   % in pounds, approximate guess based on character depiction
ideal_age(30).       % ideal age for the character
ideal_build(athletic).
% Nicole Kidman's attributes
nicole_height(5.11).
nicole_weight(120).  % estimated
nicole_age(54).
nicole_build(slender).
% Comparison rules
match_height(X) :- ideal_height(Y), X >= Y - 0.1, X =< Y + 0.1.
match_weight(X) :- ideal_weight(Y), X >= Y - 10, X =< Y + 10.
match_age(X) :- ideal_age(Y), X >= Y - 5, X =< Y + 5.
match_build(X) :- ideal_build(Y), X = Y.
% Overall suitability
is_suitable_for_psylocke :-
nicole_height(H), match_height(H),
nicole_weight(W), match_weight(W),
nicole_age(A), match_age(A),
nicole_build(B), match_build(B).
% Query predicate
query :- is_suitable_for_psylocke.
%query.