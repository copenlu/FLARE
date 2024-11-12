% Define the rule to calculate the pieces of fruit left after Lola's consumption
pieces_left_after_lola_consumption(Apples, Bananas, Oranges, PiecesLeft) :-
TotalPieces is Apples + Bananas + Oranges,  % Calculate the total number of pieces of fruit
LolaAte = 2,                                % Number of pieces Lola ate
PiecesLeft is TotalPieces - LolaAte.         % Calculate the pieces of fruit left after Lola's consumption
% Query to find the pieces of fruit left after Lola's consumption
query_pieces_left_after_lola_consumption(PiecesLeft) :-
pieces_left_after_lola_consumption(3, 5, 6, PiecesLeft).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_pieces_left_after_lola_consumption(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).