% Define the rule to calculate the total number of marbles Solomon has in the store
total_marbles(Total) :-
MarblesFromJohanna = 20,  % Assumed atom: Marbles bought from Johanna
MarblesFromFather is MarblesFromJohanna * 2 / 5,  % Assumed predicate: Marbles from father
Total is MarblesFromJohanna + MarblesInStore + MarblesFromFather.
% Define the rule to calculate the total weight of marbles
total_weight(TotalWeight) :-
total_marbles(TotalMarbles),
TotalWeight is TotalMarbles * 2.  % Each marble weighs 2kgs
% Query predicate to run the program and get the result
query(TotalWeight) :-
total_weight(TotalWeight).
% Uncomment the following line to run the query
% ?- query(TotalWeight).
%query(TotalWeight).