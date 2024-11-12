% Define the relationships between the ages of family members
age_relations(B, Y, S, M) :-
Y is B - 3,
Y is S + 2,
M is 3*B - 1,
B + Y + S + M =:= 87.
% Define a predicate to find the age of the person in question
find_age(Y) :-
age_relations(B, Y, S, M),
between(1, 87, B),  % Limit the search space for brother's age
Y is B - 3,
S is Y - 2,
M is 3*B - 1,
B + Y + S + M =:= 87.
% Query predicate to find the age of the person in question
query(Y) :-
find_age(Y).
% Uncomment the line below to run the query
% ?- query(Y).
%query(Y).