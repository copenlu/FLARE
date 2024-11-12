% Define the predicate to calculate the total lemons collected per year
lemons_per_year(TreeCount, LemonsPerTree, LemonsPerYear) :-
LemonsPerYear is TreeCount * LemonsPerTree.
% Define the predicate to calculate the total lemons collected in a decade
lemons_per_decade(TreeCount, LemonsPerTree, LemonsPerDecade) :-
lemons_per_year(TreeCount, LemonsPerTree, LemonsPerYear),
LemonsPerDecade is LemonsPerYear * 10.
% Query predicate to run the program and get the result
query(TotalLemons) :-
lemons_per_decade(5, 6, TotalLemons).
% Uncomment the following line to run the query
% ?- query(TotalLemons).
%query(TotalLemons).