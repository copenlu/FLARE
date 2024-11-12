% Define the initial_passengers predicate to calculate the initial number of passengers at the terminal
initial_passengers(X) :-
% At the first stop, 5 more people get on
Total1 is X + 5,
% At the second stop, 7 people get off and 8 more get on
Total2 is Total1 - 7 + 8,
% Total number of people heading to the third stop is 20
Total2 = 20,
% Solve for X (initial number of passengers)
X is Total2 - 8 + 7.
% Define the query predicate to run the program and get the result
query(X) :-
initial_passengers(X).
% Uncomment the following line to run the query
% ?- query(X).
%query(X).