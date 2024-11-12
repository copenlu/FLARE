% Define the rule to calculate the final number of marbles Brendan ends up with
calculate_marbles(InitialMarbles, DroppedMarbles, FoundMarbles, DiscardedMarbles, FinalMarbles) :-
FinalMarbles is InitialMarbles - DroppedMarbles + FoundMarbles - DiscardedMarbles.
% Query to find the final number of marbles Brendan ends up with
query_final_marbles(FinalMarbles) :-
InitialMarbles = 10,        % Assumed initial number of marbles
DroppedMarbles is InitialMarbles / 2,  % Calculate the number of marbles dropped
FoundMarbles = 3,           % Assumed number of marbles found
DiscardedMarbles = 1,       % Assumed number of marbles discarded
calculate_marbles(InitialMarbles, DroppedMarbles, FoundMarbles, DiscardedMarbles, FinalMarbles).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_final_marbles(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).