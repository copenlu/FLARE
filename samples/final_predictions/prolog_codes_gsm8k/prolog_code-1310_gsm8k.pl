% Define the rule for calculating the total number of good seashells
total_good_seashells(TomSeashells, NancySeashells, BennySeashells, CrackedSeashells, TotalGoodSeashells) :-
TotalSeashells is TomSeashells + NancySeashells + BennySeashells,
TotalGoodSeashells is TotalSeashells - CrackedSeashells.
% Define a predicate to execute the specific query with given values
query(TotalGoodSeashells) :-
total_good_seashells(214, 432, 86, 67, TotalGoodSeashells).
% Uncomment the line below to run the query
% ?- query(TotalGoodSeashells).
%query(TotalGoodSeashells).