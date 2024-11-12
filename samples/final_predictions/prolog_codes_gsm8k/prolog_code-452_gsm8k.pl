% Predicate to calculate total number of beads Elizabeth has
total_beads_elizabeth(Total) :- Total is (1 + 2) * 20.
% Predicate to calculate total number of beads Margareth has
total_beads_margareth(Total) :- Total is (3 + 4) * 20.
% Predicate to calculate the difference in the number of beads between Elizabeth and Margareth
bead_difference(Difference) :-
total_beads_elizabeth(ElizabethTotal),
total_beads_margareth(MargarethTotal),
Difference is abs(ElizabethTotal - MargarethTotal).
% Query predicate to find the difference in the number of beads
query(Difference) :-
bead_difference(Difference).
% Uncomment the following line to run the query
% ?- query(Difference).
%query(Difference).