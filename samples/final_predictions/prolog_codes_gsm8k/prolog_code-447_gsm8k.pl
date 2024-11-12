% Predicate to calculate the weight of one piece of the cake
weight_per_piece(TotalWeight, NumPieces, WeightPerPiece) :-
WeightPerPiece is TotalWeight / NumPieces.
% Predicate to calculate the weight of the remaining cake
remaining_cake_weight(WeightPerPiece, PiecesTaken, RemainingWeight) :-
RemainingWeight is PiecesTaken * WeightPerPiece.
% Main predicate to calculate the weight of the remaining cake after Rory and her mom each take a piece
rory_remaining_cake_weight(TotalWeight, NumPieces, PiecesTaken, RemainingWeight) :-
weight_per_piece(TotalWeight, NumPieces, WeightPerPiece),
remaining_cake_weight(WeightPerPiece, PiecesTaken, RemainingWeight).
% Query to find out the weight of the remaining cake after Rory and her mom each take a piece
query(RemainingWeight) :-
rory_remaining_cake_weight(20, 8, 2, RemainingWeight).
% Uncomment the following line to run the query
% ?- query(RemainingWeight).
%query(RemainingWeight).