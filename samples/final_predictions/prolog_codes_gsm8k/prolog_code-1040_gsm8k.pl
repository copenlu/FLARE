% Define the total number of packs and pieces per pack
total_packs(15).
pieces_per_pack(60).
% Calculate the total pieces in the box
total_pieces_in_box(Total) :-
total_packs(Packs),
pieces_per_pack(Pieces),
Total is Packs * Pieces.
% Calculate the pieces Anne kept
anne_kept(PiecesKept) :-
pieces_per_pack(Pieces),
PiecesKept is 2 * Pieces.
% Calculate the remaining pieces for friends
remaining_pieces_for_friends(Remaining) :-
total_pieces_in_box(Total),
anne_kept(AnneKept),
Remaining is Total - AnneKept.
% Calculate the pieces each friend receives
pieces_per_friend(PiecesPerFriend) :-
remaining_pieces_for_friends(Remaining),
PiecesPerFriend is Remaining / 10.
% Query predicate to find the number of pieces each friend receives
query(PiecesPerFriend) :-
pieces_per_friend(PiecesPerFriend).
% Uncomment the line below to run the query
% query(PiecesPerFriend).
%query(PiecesPerFriend).