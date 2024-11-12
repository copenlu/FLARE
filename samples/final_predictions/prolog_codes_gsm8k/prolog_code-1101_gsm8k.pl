% Define the rule to calculate the total number of puzzle pieces placed by Teddy
total_puzzle_pieces_placed(TotalPieces) :-
FirstPuzzlePieces is 500 / 2,  % Calculate the number of pieces completed in the first puzzle
SecondPuzzlePieces is 500,     % Calculate the number of pieces completed in the second puzzle
TotalPieces is FirstPuzzlePieces + SecondPuzzlePieces.  % Calculate the total number of puzzle pieces placed by Teddy
% Query to find the total number of puzzle pieces placed by Teddy during the hour
query_total_puzzle_pieces_placed(TotalPieces) :-
total_puzzle_pieces_placed(TotalPieces).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_total_puzzle_pieces_placed(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).