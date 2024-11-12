% Define the facts
parent(valerie, carlos).
parent(valerie, annie).
parent(valerie, clarence).
female(valerie). % Assumed atom/predicate
male(carlos). % Assumed atom/predicate
male(clarence). % Assumed atom/predicate
% Define the rules
% Rule to determine if two individuals are siblings
sibling(X, Y) :-
parent(Z, X),
parent(Z, Y),
X \= Y.
% Rule to determine if one individual is the mother of another
mother(X, Y) :-
parent(X, Y),
female(X).
% Query to determine the relationship
query :- mother(valerie, clarence).
%query.