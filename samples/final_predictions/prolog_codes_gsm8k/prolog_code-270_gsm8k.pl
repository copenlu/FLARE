% Define the rule to calculate the number of trees in each person's yard
trees_in_yard(chris, 6).  % Assumed atom/predicate
trees_in_yard(ferdinand, NumTreesFerdinand) :-
trees_in_yard(chris, NumTreesChris),
NumTreesFerdinand is NumTreesChris / 2.
trees_in_yard(harry, NumTreesHarry) :-
trees_in_yard(ferdinand, NumTreesFerdinand),
NumTreesHarry is 5 + 2 * NumTreesFerdinand.
% Define the rule to calculate the difference in the number of trees between Harry's and Ferdinand's yards
tree_difference(Difference) :-
trees_in_yard(harry, NumTreesHarry),
trees_in_yard(ferdinand, NumTreesFerdinand),
Difference is NumTreesHarry - NumTreesFerdinand.
% Main predicate to compute the difference in the number of trees between Harry's and Ferdinand's yards
calculate_tree_difference(Difference) :-
tree_difference(Difference).
% Query predicate to get the difference in the number of trees
query(Difference) :-
calculate_tree_difference(Difference).
% Uncomment the following line to run the query
% query(Difference).
%query(Difference).