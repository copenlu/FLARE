% Define the predicate to calculate the total number of loaves baked
% Assumed atom/predicate: Paige bakes 2 loaves per hour for 5 hours
total_loaves_baked(TotalLoaves) :-
TotalLoaves is 2 * 5.
% Define the predicate to calculate the total number of slices
total_slices(TotalSlices) :-
total_loaves_baked(Loaves),
TotalSlices is Loaves * 8.
% Define the predicate to calculate the total amount raised
total_amount_raised(TotalAmount) :-
total_slices(Slices),
TotalAmount is Slices * 0.50.
% Query predicate to run the program and get the result
query(TotalAmount) :-
total_amount_raised(TotalAmount).
% Uncomment the following line to run the query
% ?- query(TotalAmount).
%query(TotalAmount).