% Define the facts
parent(dorothy, michelle). % Dorothy is the parent of Michelle
parent(gabrielle, dorothy). % Gabrielle is the parent of Dorothy
% Define the rules
% Rule to determine if someone is a grandparent
grandparent(X, Y) :-
parent(X, Z),  % X is a parent of Z
parent(Z, Y).  % Z is a parent of Y
% Query to determine the relationship
% This predicate will check if Gabrielle is the grandmother of Michelle
query :-
grandparent(gabrielle, michelle).
% Uncomment the line below to run the query
% ?- query.
% ?- query.