% Define the rule to calculate the number of loaves the bakery has
loaves_bakery_has(SamLoaves, BakeryLoaves) :-
BakeryLoaves is 7 * SamLoaves - 40.
% Calculate the number of loaves the bakery has based on Sam having 70 loaves
calculate_bakery_loaves(BakeryLoaves) :-
SamLoaves = 70,  % Sam had 70 loaves last Friday
loaves_bakery_has(SamLoaves, BakeryLoaves).
% Predicate to encapsulate the entire calculation and output the number of loaves the bakery has
query(BakeryLoaves) :-
calculate_bakery_loaves(BakeryLoaves).
% Uncomment the following line to run the query
% ?- query(BakeryLoaves).
%query(BakeryLoaves).