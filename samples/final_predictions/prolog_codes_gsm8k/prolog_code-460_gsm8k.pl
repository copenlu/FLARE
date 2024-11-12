% Predicate to calculate the total number of colors in the packets
total_colors(Packet1, Pieces1, Packet2, Pieces2, TotalColors) :-
TotalColors is (Packet1 * Pieces1) + (Packet2 * Pieces2.
% Main predicate to calculate the total number of colors Beatrice bought
beatrice_crayons(TotalColors) :-
total_colors(6, 8, 4, 16, TotalColors).
% Query predicate to find out how many colors of crayons Beatrice bought
query(TotalColors) :-
beatrice_crayons(TotalColors).
% Uncomment the following line to run the query
% ?- query(TotalColors).
%query(TotalColors).