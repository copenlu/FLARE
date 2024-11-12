% Predicate to calculate the slices given to Bill
slices_given_to_bill(TotalSlices, SlicesToBill) :-
SlicesToBill is TotalSlices * (1/3).
% Predicate to calculate the slices given to Mark
slices_given_to_mark(TotalSlices, SlicesToMark) :-
SlicesToMark is TotalSlices * (1/4).
% Predicate to calculate the total slices eaten
total_slices_eaten(TotalSlices, SlicesToBill, SlicesToMark, JennySlices, TotalEaten) :-
TotalEaten is SlicesToBill + SlicesToMark + JennySlices.
% Predicate to calculate the slices left
slices_left(TotalSlices, TotalEaten, SlicesLeft) :-
SlicesLeft is TotalSlices - TotalEaten.
% Main predicate to calculate the slices left after distribution and consumption
pizza_slices_left(TotalSlices, SlicesLeft) :-
slices_given_to_bill(TotalSlices, SlicesToBill),
slices_given_to_mark(TotalSlices, SlicesToMark),
total_slices_eaten(TotalSlices, SlicesToBill, SlicesToMark, 2, TotalEaten),
slices_left(TotalSlices, TotalEaten, SlicesLeft).
% Query predicate to find out how many slices are left after Jenny's actions
query(SlicesLeft) :-
pizza_slices_left(12, SlicesLeft).
% Uncomment the following line to run the query
% ?- query(SlicesLeft).
%query(SlicesLeft).