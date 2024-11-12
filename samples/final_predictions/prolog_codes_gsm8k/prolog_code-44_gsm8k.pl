% Define the rule to calculate the number of pieces taken by the guests
pieces_taken(PiecesTaken) :-
TotalPiecesAvailable is 5 * 8,  % Calculate the total number of pieces available initially
RemainingPieces is 14,         % Number of pieces remaining at the end
PiecesTaken is TotalPiecesAvailable - RemainingPieces.  % Calculate the number of pieces taken by the guests
% Query to find the number of pieces taken by the guests
query_pieces_taken(PiecesTaken) :-
pieces_taken(PiecesTaken).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_pieces_taken(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).