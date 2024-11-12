% Define the facts
father(jason, myrna). % Jason is the father of Myrna
mother(myrna, guillermina). % Myrna is the mother of Guillermina
% Define the rules
parent(X, Y) :- father(X, Y); mother(X, Y). % X is a parent of Y if X is either father or mother of Y
% Query to determine the relationship
% This predicate checks if Jason is the father of Myrna
query :- father(jason, myrna).
% Uncomment the line below to run the query
% ?- query.
% ?- query.