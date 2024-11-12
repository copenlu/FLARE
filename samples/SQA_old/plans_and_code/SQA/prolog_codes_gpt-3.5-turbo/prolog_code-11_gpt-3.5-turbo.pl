% Define family members
parent('Harold Richie', 'Lionel Richie').
parent('Alberta R. Foster', 'Lionel Richie').
parent('Pete Escovedo', 'Sheila E.').
parent('Juanita Gardere', 'Sheila E.').
% Define sibling relationships
sibling(X, Y) :- parent(X, Z), parent(Y, Z), X \= Y.
% Define unrelated rule
unrelated(X, Y) :- \+ parent(X, Z), \+ parent(Y, Z), \+ sibling(X, Y).
% Query relations
related(X, Y) :- parent(X, Y); parent(Y, X); sibling(X, Y).
% Query predicate
query :- related('Lionel Richie', 'Sheila E.').
%query.