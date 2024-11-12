% Define the rule to calculate the initial number of grapes
initial_grapes(InitialGrapes) :-
MadelineGrapes = 6,                     % Assumed atom/predicate: Madeline ate 6 grapes
BrotherGrapes = 5 * MadelineGrapes,     % Calculate the number of grapes used by Madeline's brother
TotalGrapes is MadelineGrapes + BrotherGrapes,  % Calculate the total number of grapes
RemainingGrapes is TotalGrapes - BrotherGrapes,  % Calculate the remaining grapes after making juice
PiesMade is RemainingGrapes // 12,       % Calculate the number of pies that can be made
InitialGrapes is TotalGrapes + BrotherGrapes.  % Calculate the initial number of grapes
% Query to find the initial number of grapes
query_initial_grapes(InitialGrapes) :-
initial_grapes(InitialGrapes).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_initial_grapes(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).