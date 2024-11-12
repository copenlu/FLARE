% Define the rule to calculate the remaining slices on the plate
remaining_slices(InitialSlices, AddedSlices, EatenSlices, StolenSlices, RemainingSlices) :-
TotalSlices is InitialSlices + AddedSlices,          % Calculate total slices after adding initial and added slices
TripledSlices is TotalSlices * 3,                    % Triple the total slices
RemainingAfterEating is TripledSlices - EatenSlices, % Calculate remaining slices after eating
RemainingSlices is RemainingAfterEating - StolenSlices. % Calculate final remaining slices after stolen
% Query to find the remaining slices on the plate
query_remaining_slices(RemainingSlices) :-
remaining_slices(2, 3, 2, 5, RemainingSlices).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_remaining_slices(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).