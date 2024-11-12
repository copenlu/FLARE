% Define the rule to calculate the total number of kittens
total_kittens(DoubtfireSistersKittens, PatchyMultiplier, TrixieKittens, TotalKittens) :-
PatchyKittens is DoubtfireSistersKittens * PatchyMultiplier,  % Calculate the number of kittens Patchy has
TotalKittens is DoubtfireSistersKittens + PatchyKittens + TrixieKittens.  % Calculate the total number of kittens
% Query to find the total number of kittens the Doubtfire family has
query_total_kittens(TotalKittens) :-
total_kittens(7, 3, 12, TotalKittens).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_total_kittens(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).