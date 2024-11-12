% Define a predicate to calculate the number of coffee mugs in the teacher's lounge
coffee_mugs(X) :-
X is (40 - 8) / 4.
% Define a query predicate to find out the number of coffee mugs in the teacher's lounge
query(X) :-
coffee_mugs(X).
% Uncomment the line below to run the query in SWI-Prolog
% query(X).
%query(X).