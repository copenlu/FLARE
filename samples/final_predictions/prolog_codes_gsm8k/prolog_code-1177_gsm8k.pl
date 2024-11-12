% Define the rule to calculate the number of eggs each child receives
% Params: Dozens, EggsPerDozen, Children, EggsPerChild
calculate_eggs_per_child(Dozens, EggsPerDozen, Children, EggsPerChild) :-
TotalEggs is Dozens * EggsPerDozen,
EggsPerChild is TotalEggs / Children.
% Main predicate to compute the number of eggs each child receives
% Params: EggsPerChild
calculate_eggs_distribution(EggsPerChild) :-
% Constants
Dozens = 3,
EggsPerDozen = 12,
Children = 4,
% Calculate the number of eggs each child receives
calculate_eggs_per_child(Dozens, EggsPerDozen, Children, EggsPerChild).
% Query predicate to get the number of eggs each child receives
query(EggsPerChild) :-
calculate_eggs_distribution(EggsPerChild).
% Uncomment the following line to run the query
% query(EggsPerChild).
%query(EggsPerChild).