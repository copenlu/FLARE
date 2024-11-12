% Define the mother relationships
mother(gabrielle, dorothy).
mother(dorothy, vincent).
% Define parent relationship based on mother relationship
parent(X, Y) :- mother(X, Y).
% Define grandparent relationship
grandparent(X, Y) :- parent(X, Z), parent(Z, Y).
% Query to find out how Vincent is related to Gabrielle
query :- grandparent(gabrielle, vincent).
% Uncomment the line below to run the query in SWI-Prolog
% ?- query.
% ?- query.