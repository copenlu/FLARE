% Define the rule to calculate the total number of children participating in the drill
total_children(Total) :-
ChildrenInRow is 8 * 7,         % Calculate the total number of children in a single row
ChildrenInSchool is ChildrenInRow * 7,  % Calculate the total number of children in a single school
Total is ChildrenInSchool * 5.  % Calculate the total number of children across all schools
% Query to find the total number of children in the drill
query_total_children(Total) :-
total_children(Total).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_total_children(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).