% Define the rule for the number of fish in each aquarium
number_of_fish(F) :-
DiffSnails is 32 - 4,  % Difference in the number of snails in the two aquariums
DiffSnails =:= 2 * F.  % Difference is twice the number of fish
% Query predicate to run the program and get the result
query(F) :-
number_of_fish(F).
% Uncomment the following line to run the query
% ?- query(F).
%query(F).