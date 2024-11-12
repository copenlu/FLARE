% Define the predicate to calculate the number of potatoes required for a certain number of scoops
potatoes_for_scoops(Scoops, Potatoes) :-
Potatoes is 3 * Scoops.
% Define the predicate to calculate the number of scoops eaten by Gomer
scoops_eaten(ScoopsEaten) :-
ScoopsEaten is 23 - 5.  % Gomer ate 5 less than 23 scoops
% Define the predicate to calculate the number of potatoes eaten by Gomer
potatoes_eaten(PotatoesEaten, ScoopsEaten) :-
potatoes_for_scoops(ScoopsEaten, PotatoesEaten).
% Query predicate to find the number of potatoes eaten by Gomer
query(PotatoesEaten) :-
scoops_eaten(ScoopsEaten),
potatoes_eaten(PotatoesEaten, ScoopsEaten).
% Uncomment the line below to run the query
% ?- query(PotatoesEaten).
%query(PotatoesEaten).