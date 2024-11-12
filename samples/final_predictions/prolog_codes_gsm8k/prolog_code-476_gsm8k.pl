% Define predicate to calculate Finley's final position
calculate_final_position(FinalPosition) :-
InitialPosition = 1,  % Finley starts in first place
PositionAfterFallBack is InitialPosition + 5,
PositionAfterMoveAhead is PositionAfterFallBack - 2,
PositionAfterFallBehind is PositionAfterMoveAhead + 3,
FinalPosition is PositionAfterFallBehind - 1.  % Jumping ahead 1 spot to finish
% Query the predicate to find Finley's final position
query(FinalPosition) :-
calculate_final_position(FinalPosition).
% Uncomment the following line to run the query and determine Finley's final position
% ?- query(FinalPosition).
%query(FinalPosition).