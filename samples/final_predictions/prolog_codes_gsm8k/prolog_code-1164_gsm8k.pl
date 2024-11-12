% Define the total_marbles predicate to represent the condition of receiving 2 dozen more marbles
total_marbles(CurrentMarbles) :-
CurrentMarbles + 24 = 60.
% Define the remaining_marbles predicate to calculate the number of marbles Bob will have left after losing 10 marbles
remaining_marbles(CurrentMarbles, RemainingMarbles) :-
RemainingMarbles is CurrentMarbles - 10.
% Query predicate to run the program and get the result
query(RemainingMarbles) :-
total_marbles(X),  % X represents the current number of marbles Bob has
remaining_marbles(X, RemainingMarbles).
% Uncomment the following line to run the query
% ?- query(RemainingMarbles).
%query(RemainingMarbles).