% Define the facts
parent(sandra, teresa).  % Sandra is the parent of Teresa
parent(sandra, ellis).   % Sandra is the parent of Ellis
parent(molly, sandra).   % Molly is the parent of Sandra
% Define the rules
% Rule to determine if someone is a parent
is_parent(X, Y) :- parent(X, Y).
% Rule to determine if someone is a grandparent
is_grandparent(X, Y) :- parent(X, Z), parent(Z, Y).
% Rule to determine if someone is a grandmother
is_grandmother(X, Y) :- is_grandparent(X, Y), female(X).
% Rule to determine if someone is a grandfather
is_grandfather(X, Y) :- is_grandparent(X, Y), male(X).
% Assumed gender facts
female(molly).  % Assumed atom/predicate
female(sandra). % Assumed atom/predicate
male(ellis).    % Assumed atom/predicate
female(teresa). % Assumed atom/predicate
% Query to determine the relationship between Molly and Sandra
query :- parent(molly, sandra).
% Uncomment the line below to run the query
% ?- query.
% ?- query.