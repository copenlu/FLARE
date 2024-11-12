% Define the total number of pieces in the jigsaw puzzle
total_pieces(1000).
% Calculate the number of pieces left after Poppy and her mom place their portions
pieces_left_to_place(PiecesLeft) :-
total_pieces(Total),
PoppyPieces is Total // 4, % Calculate 1/4 of the total pieces placed by Poppy
RemainingPieces1 is Total - PoppyPieces, % Calculate the remaining pieces after Poppy's turn
MomPieces is RemainingPieces1 // 3, % Calculate 1/3 of the remaining pieces placed by Mom
PiecesLeft is RemainingPieces1 - MomPieces. % Calculate the final count of pieces left to be placed
% Query to find out how many jigsaw pieces are left to be placed
query(PiecesLeft) :-
pieces_left_to_place(PiecesLeft).
% Uncomment the following line to run the query and calculate the pieces left to be placed
% ?- query(PiecesLeft).
%query(PiecesLeft).