% Define direct relationships
parent(valerie, annie).  % Valerie is the parent of Annie
sibling(carlos, annie).  % Carlos is a sibling of Annie
sibling(carlos, clarence).  % Carlos is a sibling of Clarence
% Define bidirectional sibling relationship
sibling(X, Y) :- sibling(Y, X).
% Define parent relationship through siblings
parent(X, Y) :- parent(X, Z), sibling(Z, Y).
% Query to determine if Valerie is the parent of Clarence
query :- parent(valerie, clarence).
% Uncomment the line below to run the query in SWI-Prolog
% ?- query.
% ?- query.