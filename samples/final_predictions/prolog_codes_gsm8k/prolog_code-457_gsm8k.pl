% Predicate to calculate the total number of eggs
total_eggs(TotalEggs) :- TotalEggs is 4 * 12 + 2.
% Predicate to calculate the total number of glasses of eggnog
total_glasses(TotalEggs, TotalGlasses) :- TotalGlasses is TotalEggs // 5.
% Predicate to calculate the number of trays needed
trays_needed(TotalGlasses, Trays) :- Trays is TotalGlasses // 5.
% Main predicate to calculate the number of trays Rozanne can put out
eggnog_trays(Trays) :-
total_eggs(TotalEggs),
total_glasses(TotalEggs, TotalGlasses),
trays_needed(TotalGlasses, Trays).
% Query to find out how many trays Rozanne can put out
query(Trays) :-
eggnog_trays(Trays).
% Uncomment the following line to run the query
% ?- query(Trays).
%query(Trays).