jeans_age(JeanAge) :-
JanAge is 30,  % Given Jan's age
MarkAge is JanAge / 2 - 5 + 2,  % Calculate Mark's age based on the given relationship
JeanAge is MarkAge + 2.  % Calculate Jean's age based on the relationship with Mark
% Define a query predicate to find Jean's age
query(JeanAge) :-
jeans_age(JeanAge).
% Uncomment the line below to run the query in SWI-Prolog
% ?- query(JeanAge).
%query(JeanAge).