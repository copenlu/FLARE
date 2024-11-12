% Define the rule for calculating the number of pieces of paper needed
calculate_paper_count(TotalPages, PaperCount) :-
PaperCount is TotalPages / 4.
% Define a predicate to execute the specific query with given values
query(PaperCount) :-
calculate_paper_count(32, PaperCount).
% Uncomment the line below to run the query
% ?- query(PaperCount).
%query(PaperCount).