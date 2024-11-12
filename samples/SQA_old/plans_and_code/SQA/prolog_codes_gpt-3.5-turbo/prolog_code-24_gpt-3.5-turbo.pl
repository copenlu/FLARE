% Define the maximum number of children allowed under the One-Child Policy
max_children(1).
% Rule to check if the number of children is acceptable
acceptable_children(Number) :-
integer(Number),
max_children(Max),
Number =< Max.
% Query to check if a specific number of children is acceptable
query_acceptable_children(Number) :-
acceptable_children(Number) ->
true;
false.
% Driver predicate for querying
query :- query_acceptable_children(3), query_acceptable_children(3.14), query_acceptable_children(1).
%query.