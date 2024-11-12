% Define the facts
parent(gabrielle, dorothy).
parent(dorothy, vincent).
% Define the rules
grandparent(X, Y) :- parent(X, Z), parent(Z, Y).
% Define a rule to determine if someone is a grandson
grandson(Grandson, Grandparent) :-
grandparent(Grandparent, Grandson),
male(Grandson). % Assumed atom/predicate for gender
% Define a rule to determine if someone is a granddaughter
granddaughter(Granddaughter, Grandparent) :-
grandparent(Grandparent, Granddaughter),
female(Granddaughter). % Assumed atom/predicate for gender
% Define gender facts (assumed based on common names)
male(vincent). % Assumed atom/predicate
female(gabrielle). % Assumed atom/predicate
female(dorothy). % Assumed atom/predicate
% Query to determine the relationship
query :-
grandson(vincent, gabrielle),
write('Vincent is the grandson of Gabrielle.').
% Uncomment the following line to run the query
% ?- query.
% ?- query.