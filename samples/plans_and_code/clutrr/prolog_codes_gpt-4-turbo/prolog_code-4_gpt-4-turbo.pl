% Define basic family relationships
parent(alan, elizabeth). % Alan is the parent of Elizabeth
sibling(carlos, elizabeth). % Carlos is the sibling of Elizabeth
spouse(carlos, venita). % Carlos is the spouse of Venita
% Define derived relationships
% Father-in-law relationship
father_in_law(X, Y) :-
parent(X, Z), % X is the parent of Z
sibling(Z, W), % Z is the sibling of W
spouse(W, Y). % W is the spouse of Y
% Query to find if Alan is the father-in-law of Venita
query :-
father_in_law(alan, venita).
% Uncomment the line below to run the query
% ?- query.
% ?- query.