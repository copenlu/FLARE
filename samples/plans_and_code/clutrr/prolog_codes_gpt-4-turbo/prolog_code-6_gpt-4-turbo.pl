% Define basic parent-child relationships
parent(sandra, teresa).  % Sandra is the parent of Teresa
parent(thomas, teresa).  % Assumed atom/predicate: Thomas is also a parent of Teresa, as Sandra's husband
% Define sibling relationships
sibling(ellis, teresa).  % Ellis is a sibling of Teresa
% Define parent rules to infer grandparent relationships
grandmother(Grandmother, Grandchild) :-
parent(Grandmother, Parent),
parent(Parent, Grandchild).
% Define a rule to infer the mother of a person
mother(Mother, Child) :-
parent(Mother, Child),
female(Mother).  % Assumed atom/predicate: Female gender check
% Define gender facts (assumed for the purpose of the mother rule)
female(sandra).
female(molly).
% Define a rule to find the relationship between Molly and Sandra
molly_sandra_relationship(Mother) :-
grandmother(molly, teresa),
mother(Mother, teresa),
Mother = molly.
% Query to find if Molly is Sandra's mother
query :-
molly_sandra_relationship(molly).
% Uncomment the line below to run the query
% ?- query.
% ?- query.