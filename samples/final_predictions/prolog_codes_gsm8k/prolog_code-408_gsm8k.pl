% Predicate to calculate the number of millipedes based on the number of spiders
millipedes(Spiders, Millipedes) :-
Millipedes is Spiders / 3.
% Predicate to calculate the number of stink bugs based on the number of millipedes
stink_bugs(Millipedes, StinkBugs) :-
StinkBugs is 2 * Millipedes - 12.
% Predicate to calculate the total number of bugs counted by Nancy
total_bugs(Spiders, Millipedes, StinkBugs, Total) :-
Total is Spiders + Millipedes + StinkBugs.
% Main predicate to calculate the total number of bugs counted by Nancy
nancy_counted_bugs(Spiders, Total) :-
millipedes(Spiders, Millipedes),
stink_bugs(Millipedes, StinkBugs),
total_bugs(Spiders, Millipedes, StinkBugs, Total).
% Query to find out the total number of bugs counted by Nancy when she saw 90 spiders
query(Total) :-
nancy_counted_bugs(90, Total).
% Uncomment the following line to run the query
% ?- query(Total).
%query(Total).