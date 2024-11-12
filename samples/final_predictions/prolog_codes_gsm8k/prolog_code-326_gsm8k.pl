% Define the rule for calculating the total number of children
total_children(Boys, TotalChildren) :-
girls_count(Boys, Girls),  % Calculate the number of girls
nongendered_count(Boys, Nongendered),  % Calculate the number of nongendered children
TotalChildren is Boys + Girls + Nongendered.  % Calculate the total number of children
% Define the rule for calculating the number of girls
girls_count(Boys, Girls) :-
Girls is 3 * Boys.  % There are 3 times as many girls as boys
% Define the rule for calculating the number of nongendered children
nongendered_count(Boys, Nongendered) :-
Nongendered is Boys / 10.  % There are 1/10 as many nongendered children as boys
% Query predicate to run the program and get the result
query(TotalChildren) :-
total_children(30, TotalChildren).  % Given there are 30 boys, find the total number of children
% Uncomment the following line to run the query
% ?- query(TotalChildren).
%query(TotalChildren).