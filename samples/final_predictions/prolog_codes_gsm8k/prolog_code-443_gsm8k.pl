% Define the number of dragons slain by each prince
dragons_slain(thaddeus, 100).
dragons_slain(arthur, ArthurDragons) :- ArthurDragons is 3/4 * 100.
dragons_slain(walter, WalterDragons) :- dragons_slain(arthur, ArthurDragons), WalterDragons is 2 * ArthurDragons.
dragons_slain(bruce, BruceDragons) :- dragons_slain(walter, WalterDragons), BruceDragons is 1/5 * WalterDragons.
% Query predicate to find out how many dragons Prince Bruce has slain
query(Dragons) :-
dragons_slain(bruce, Dragons).
% Uncomment the following line to run the query
% ?- query(Dragons).
%query(Dragons).