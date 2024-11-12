% Define the rule for calculating the screws left over
screws_left_over(NumTables, TotalScrews, ScrewsLeftOver) :-
TotalLegs is NumTables * 4,
TotalScrewsRequired is TotalLegs * 2,
ScrewsLeftOver is TotalScrews - TotalScrewsRequired.
% Define a predicate to execute the specific query with given values
query(ScrewsLeftOver) :-
screws_left_over(4, 40, ScrewsLeftOver).
% Uncomment the line below to run the query
% ?- query(ScrewsLeftOver).
%query(ScrewsLeftOver).