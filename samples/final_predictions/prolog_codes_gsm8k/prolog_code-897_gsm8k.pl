% Define the predicate to calculate the total number of marbles after receiving marbles
total_marbles(InitialMarbles, MarblesReceived, TotalMarbles) :-
TotalMarbles is InitialMarbles + MarblesReceived.
% Define the predicate to calculate the number of marbles lost (1/4 of the total)
marbles_lost(TotalMarbles, MarblesLost) :-
MarblesLost is TotalMarbles / 4.
% Define the predicate to calculate the number of marbles left
marbles_left(TotalMarbles, MarblesLost, MarblesLeft) :-
MarblesLeft is TotalMarbles - MarblesLost.
% Main predicate to compute the number of marbles Paul has left
calculate_marbles_left(MarblesLeft) :-
InitialMarbles = 52,  % Initial number of marbles
MarblesReceived = 28,  % Marbles received from friend
% Calculate the total number of marbles
total_marbles(InitialMarbles, MarblesReceived, TotalMarbles),
% Calculate the number of marbles lost
marbles_lost(TotalMarbles, MarblesLost),
% Calculate the number of marbles left
marbles_left(TotalMarbles, MarblesLost, MarblesLeft).
% Query predicate to get the number of marbles Paul has left
query(MarblesLeft) :-
calculate_marbles_left(MarblesLeft).
% Uncomment the following line to run the query
% query(MarblesLeft).
%query(MarblesLeft).