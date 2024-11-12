% Define the rule for calculating the length of crepe paper needed
crepe_paper_length(LongSide, ShortSide, Perimeter) :-
Perimeter is 2 * (LongSide + ShortSide).
% Define a predicate to execute the specific query with given values
query(Perimeter) :-
crepe_paper_length(20, 15, Perimeter).
% Uncomment the line below to run the query
% ?- query(Perimeter).
%query(Perimeter).