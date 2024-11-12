% Define parent-child relationships
parent(dorothy, michelle).  % Dorothy is the parent of Michelle
parent(gabrielle, dorothy). % Gabrielle is the parent of Dorothy
% Define grandparent relationship using a rule
grandparent(X, Y) :- parent(X, Z), parent(Z, Y).
% Query to determine if Gabrielle is the grandparent of Michelle
query :- grandparent(gabrielle, michelle).
% Uncomment the line below to run the query
% ?- query.
% ?- query.