% Define initial facts
initial_sandwiches(12).
cody_portion(1/3).
trevor_portion(1/4).
% Define predicate to calculate remaining sandwiches
remaining_sandwiches(Remaining) :-
initial_sandwiches(Initial),
cody_portion(CodyPortion),
trevor_portion(TrevorPortion),
CodyEaten is Initial * CodyPortion,
TrevorEaten is Initial * TrevorPortion,
Remaining is Initial - CodyEaten - TrevorEaten.
% Query to find the remaining sandwiches
query(Remaining) :-
remaining_sandwiches(Remaining).
% Uncomment the following line to run the query
% ?- query(Remaining).
%query(Remaining).