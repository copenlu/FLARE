% Define a rule to calculate the length of the longer piece
longer_piece_length(ShorterPieceLength, LongerPieceLength) :-
LongerPieceLength is 4 * ShorterPieceLength.
% Define the total length of the board
total_length(BoardLength) :-
BoardLength is 40.
% Calculate the length of the longer piece
calculate_longer_piece_length :-
total_length(TotalLength),
ShorterPieceLength is TotalLength / 5, % Since the longer piece is 4 times longer than the shorter piece
longer_piece_length(ShorterPieceLength, LongerPieceLength),
% Uncomment the line below to display the length of the longer piece
% write('The length of the longer piece is: '), write(LongerPieceLength).
% Define a query predicate to run the calculation
query(LongerPieceLength) :-
calculate_longer_piece_length,
longer_piece_length(_, LongerPieceLength).
% Uncomment the line below to run the query in SWI-Prolog
% ?- query(LongerPieceLength).
%query(LongerPieceLength).