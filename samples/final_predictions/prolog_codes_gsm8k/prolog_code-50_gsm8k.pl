% Define the rule to calculate the number of pieces obtained
calculate_pieces(TotalLengthFeet, PieceLengthInches, TotalPieces) :-
TotalLengthInches is TotalLengthFeet * 12,  % Convert total length from feet to inches
TotalPieces is TotalLengthInches // PieceLengthInches.  % Calculate total number of pieces obtained
% Query to find the total number of pieces obtained when the wire is 4 feet long and cut into 6-inch pieces
query_total_pieces(TotalPieces) :-
calculate_pieces(4, 6, TotalPieces).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_total_pieces(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).