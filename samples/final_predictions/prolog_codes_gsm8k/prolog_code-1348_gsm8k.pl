% Rule to calculate the number of oranges Ana can peel in one hour
oranges_peeled_ana(Oranges) :-
Oranges is 60 // 3.
% Rule to calculate the number of oranges Jane can peel in one hour
oranges_peeled_jane(Oranges) :-
Oranges is 60 // 4.
% Rule to find the difference in the number of oranges peeled by Ana and Jane
difference_oranges_peeled(Difference) :-
oranges_peeled_ana(AnaOranges),
oranges_peeled_jane(JaneOranges),
Difference is AnaOranges - JaneOranges.
% Define a query predicate to get the difference in the number of oranges peeled by Ana and Jane
query(Difference) :-
difference_oranges_peeled(Difference).
% Uncomment the line below to run the query in SWI-Prolog
% query(Difference).
%query(Difference).