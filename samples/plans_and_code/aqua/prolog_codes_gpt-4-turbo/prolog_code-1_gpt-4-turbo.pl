% Import necessary libraries
:- use_module(library(lists)).
% Define the main predicate to calculate the number of permutations
count_permutations(List, Count) :-
% Find all permutations of the list
findall(Perm, permutation(List, Perm), Perms),
% Count the number of permutations
length(Perms, Count).
% Predicate to initiate the calculation with the word "PROBLEC"
calculate_permutations_of_problec(Count) :-
% Define the list of characters in the word "PROBLEC"
List = ['P', 'R', 'O', 'B', 'L', 'E', 'C'],
% Call the count_permutations predicate
count_permutations(List, Count).
% Query predicate to get the result
query :-
calculate_permutations_of_problec(Count),
% Output the result
format("The number of permutations is: ~w", [Count]).
% Uncomment the line below to run the query
% query.
% query.