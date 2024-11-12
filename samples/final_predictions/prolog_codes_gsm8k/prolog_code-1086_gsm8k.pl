% Predicate to calculate the number of slices each person ate
% Params: BeckySliceCount, JakeSliceCount, SilviaSliceCount
slice_counts(BeckySliceCount, JakeSliceCount, SilviaSliceCount) :-
BeckySliceCount is 10,  % Given that Becky ate 10 slices
JakeSliceCount is BeckySliceCount - 3,  % Becky ate 3 more slices than Jake
SilviaSliceCount is JakeSliceCount * 2.  % Silvia ate twice as many slices as Jake
% Predicate to calculate the total number of slices eaten
% Params: TotalSlices
total_slices_eaten(TotalSlices) :-
slice_counts(BeckySliceCount, JakeSliceCount, SilviaSliceCount),
TotalSlices is BeckySliceCount + JakeSliceCount + SilviaSliceCount.
% Main predicate to compute the total number of slices eaten by all three individuals
% Params: TotalSlices
calculate_total_slices(TotalSlices) :-
total_slices_eaten(TotalSlices).
% Query predicate to get the total number of slices eaten
query(TotalSlices) :-
calculate_total_slices(TotalSlices).
% Uncomment the following line to run the query
% query(TotalSlices).
%query(TotalSlices).