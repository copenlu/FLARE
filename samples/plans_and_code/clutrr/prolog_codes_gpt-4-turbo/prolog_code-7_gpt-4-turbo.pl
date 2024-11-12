% Facts defining direct family relationships
parent(jason, myrna). % Jason is a parent of Myrna
parent(myrna, guillermina). % Myrna is a parent of Guillermina
% Assumed gender facts
male(jason). % Assumed atom/predicate that Jason is male
female(myrna). % Assumed atom/predicate that Myrna is female
female(guillermina). % Assumed atom/predicate that Guillermina is female
% Rules defining extended family relationships
% Grandparent relationship
grandparent(X, Y) :- parent(X, Z), parent(Z, Y).
% Father relationship
father(X, Y) :- parent(X, Y), male(X).
% Mother relationship
mother(X, Y) :- parent(X, Y), female(X).
% Query to determine if Jason is the father of Myrna
query :- father(jason, myrna).
% Uncomment the line below to run the query in SWI-Prolog
% ?- query.
% ?- query.