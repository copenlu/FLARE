% Define the facts
father(alan, annie).
brother(alan, elliott).
brother(alan, james).
brother(elliott, james).
% Define the rules
% Sibling relationship is reciprocal
sibling(X, Y) :- brother(X, Y).
sibling(X, Y) :- brother(Y, X).
% Niece or nephew relationship based on parent and sibling relationship
niece_or_nephew(NieceNephew, UncleAunt) :-
father(Father, NieceNephew),
sibling(Father, UncleAunt).
% Query to determine the relationship
query :- niece_or_nephew(annie, james).
% Uncomment the following line to run the query
% ?- query.
% ?- query.