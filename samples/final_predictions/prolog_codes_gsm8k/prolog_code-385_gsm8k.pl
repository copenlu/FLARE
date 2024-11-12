% Define the rule to calculate the total number of pieces of rolls fed to the chickens
pieces_fed_to_chickens(TotalPieces) :-
RemainingRolls is 12 - 6,  % Calculate the number of remaining rolls after feeding the children
TotalPieces is RemainingRolls * 8.  % Calculate the total number of pieces fed to the chickens
% Query to find the total number of pieces of rolls fed to the chickens
query_pieces_fed_to_chickens(TotalPieces) :-
pieces_fed_to_chickens(TotalPieces).
% Define a predicate that returns the correct numerical answer when queried
query(TotalPieces) :-
query_pieces_fed_to_chickens(TotalPieces).
% Uncomment the following line to run the query
% ?- query(TotalPieces).
%query(TotalPieces).