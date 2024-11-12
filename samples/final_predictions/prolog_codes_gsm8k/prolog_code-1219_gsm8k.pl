% Define a predicate to calculate the total slices eaten by all three siblings
total_slices_eaten(DoxaSlices, TotalSlices) :-
SisterSlices is DoxaSlices + 1,  % Doxa's sister ate 1 more slice than Doxa
BrotherSlices is SisterSlices + 1,  % Doxa's brother ate 1 more slice than Doxa's sister
TotalSlices is DoxaSlices + SisterSlices + BrotherSlices.  % Total slices eaten by all three siblings
% Define a query predicate to find out the total slices eaten by all three siblings
query(TotalSlices) :-
% Doxa ate 1 slice initially
total_slices_eaten(1, TotalSlices).
% Uncomment the line below to run the query in SWI-Prolog
% query(TotalSlices).
%query(TotalSlices).