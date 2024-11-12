% Define the number of slices from slicing a large apple
total_slices_large(5).
% Define the number of slices from slicing a small apple
total_slices_small(3).
% Define the total slices eaten by Adam
total_slices_eaten(15).
% Calculate the total slices from slicing 3 large apples
total_slices_large_apples(TotalSlicesLarge) :-
total_slices_large(SlicesLarge),
TotalSlicesLarge is 3 * SlicesLarge.
% Calculate the total slices from slicing 5 small apples
total_slices_small_apples(TotalSlicesSmall) :-
total_slices_small(SlicesSmall),
TotalSlicesSmall is 5 * SlicesSmall.
% Calculate the total slices available
total_slices_available(TotalSlicesAvailable) :-
total_slices_large_apples(TotalSlicesLarge),
total_slices_small_apples(TotalSlicesSmall),
TotalSlicesAvailable is TotalSlicesLarge + TotalSlicesSmall.
% Calculate the number of slices left after Adam eats
slices_left(SlicesLeft) :-
total_slices_available(TotalSlicesAvailable),
total_slices_eaten(TotalSlicesEaten),
SlicesLeft is TotalSlicesAvailable - TotalSlicesEaten.
% Query predicate to find the number of slices left after Adam eats
query(SlicesLeft) :-
slices_left(SlicesLeft).
% Uncomment the line below to run the query
% query(SlicesLeft).
%query(SlicesLeft).