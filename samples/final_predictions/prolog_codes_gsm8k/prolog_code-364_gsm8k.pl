% Define the height of the shortest tree
shortest_tree(6).
% Define the height of the second tree
second_tree(11).
% Define the tallest_tree predicate to calculate the height of the tallest tree
tallest_tree(Tallest) :-
shortest_tree(Shortest),  % Get the height of the shortest tree
second_tree(Second),  % Get the height of the second tree
Tallest is 2 * (Shortest + Second).  % Calculate the height of the tallest tree
% Query predicate to run the program and get the result
query(Tallest) :-
tallest_tree(Tallest).
% Uncomment the following line to run the query
% ?- query(Tallest).
%query(Tallest).