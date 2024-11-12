% Define the total number of chocolate bars sold
total_chocolate_bars(64).
% Calculate the number of chocolate bars in a box
calculate_bars_per_box(LisaBoxes, PeterBoxes, BarsPerBox) :-
TotalBoxes is LisaBoxes + PeterBoxes,
total_chocolate_bars(TotalBars),
BarsPerBox is TotalBars / TotalBoxes.
% Query predicate to find the number of chocolate bars in a box
query(BarsPerBox) :-
calculate_bars_per_box(3.5, 4.5, BarsPerBox).
% Uncomment the line below to run the query
% query(BarsPerBox).
%query(BarsPerBox).