% Predicate to calculate the number of apples gathered by Joanne from different types of trees
apples_gathered(T, S, A) :-
S is T / 2, % Assumed predicate: Joanne gathers half the amount from the shortest trees
A is 500 - T - S - 2*T - 3*S. % Calculate the number of apples gathered from the average trees
% Predicate to calculate the total number of apples gathered by both sisters
total_apples(T, S, A, Total) :-
apples_gathered(T, S, A),
Total is T + S + A + 2*T + 3*S.
% Predicate to find out how many apples Joanne gathered from the average trees
joanne_average_trees(ApplesAverage) :-
total_apples(30, _, _, 500), % Joanne gathers 30 apples from the tallest trees
apples_gathered(30, S, A), % Calculate the number of apples gathered from the average trees
ApplesAverage is A.
% Query to determine the number of apples Joanne gathered from the average trees
query(ApplesAverage) :-
joanne_average_trees(ApplesAverage).
% Uncomment the following line to run the query
% ?- query(ApplesAverage).
%query(ApplesAverage).