% Define the total number of hamsters in the pet shop
total_hamsters(TotalHamsters) :-
TotalHamsters is 3 * 10.  % 3 cages with 10 hamsters each
% Define the total number of guinea pigs in the pet shop
total_guinea_pigs(TotalGuineaPigs) :-
TotalGuineaPigs is 3 * 5.  % 3 cages with 5 guinea pigs each
% Define the total number of rodents in the pet shop by summing hamsters and guinea pigs
total_rodents(TotalRodents) :-
total_hamsters(Hamsters),
total_guinea_pigs(GuineaPigs),
TotalRodents is Hamsters + GuineaPigs.
% Query predicate to run the program and get the result
query(TotalRodents) :-
total_rodents(TotalRodents).
% Uncomment the following line to run the query
% ?- query(TotalRodents).
%query(TotalRodents).