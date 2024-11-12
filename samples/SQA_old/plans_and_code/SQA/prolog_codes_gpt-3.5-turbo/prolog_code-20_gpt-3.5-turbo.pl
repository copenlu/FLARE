% Define facts for individuals
person(adam).
person(eve).
person(cain).
person(abel).
person(seth).
% Define parent-child relationships
parent(adam, cain).
parent(eve, cain).
parent(adam, abel).
parent(eve, abel).
parent(adam, seth).
parent(eve, seth).
% Define rules for relationships
sibling(X, Y) :- parent(Z, X), parent(Z, Y), X \= Y.
incestuous(X, Y) :- sibling(X, Y); parent(X, Y).
% Define query predicate
query :- findall((X, Y), incestuous(X, Y), IncestuousRelationships),
findall(Descendant, parent(eve, Descendant), Descendants),
format('Incestuous Relationships: ~w~n', [IncestuousRelationships]),
format('Descendants of Eve: ~w~n', [Descendants]).
% Driver predicate
% query.
% query.