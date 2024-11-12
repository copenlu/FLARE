% Define the total number of oranges Jennifer bought
total_oranges_bought(12).
% Calculate the total number of oranges given to her daughters (2 oranges each for 3 daughters)
oranges_given_daughters(6).
% Calculate the total number of oranges given to her son
oranges_given_son(3).
% Calculate the total number of oranges distributed
total_oranges_distributed(Distributed) :-
oranges_given_daughters(DaughtersOranges),
oranges_given_son(SonOranges),
Distributed is DaughtersOranges + SonOranges.
% Calculate the number of oranges Jennifer remained with
oranges_remaining(Remaining) :-
total_oranges_bought(TotalOranges),
total_oranges_distributed(Distributed),
Remaining is TotalOranges - Distributed.
% Query predicate to find the number of oranges Jennifer remained with
query(Remaining) :-
oranges_remaining(Remaining).
% Uncomment the line below to run the query
% query(Remaining).
%query(Remaining).