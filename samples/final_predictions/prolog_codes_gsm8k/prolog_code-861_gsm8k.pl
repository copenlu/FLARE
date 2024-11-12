% Define the original length of the glue sticks
original_length(12).
% Calculate the length of a glue stick that is not used based on the remaining fraction
unused_length(RemainingFraction, UnusedLength) :-
original_length(OriginalLength),
UnusedLength is (1 - RemainingFraction) * OriginalLength.
% Calculate the total length of glue sticks that are not used
total_unused_length(TotalUnusedLength) :-
unused_length(1/6, UnusedLength1),  % Assumed remaining fraction for the first glue stick
unused_length(2/3, UnusedLength2),  % Assumed remaining fraction for the second glue stick
unused_length(1/2, UnusedLength3),  % Assumed remaining fraction for the third glue stick
TotalUnusedLength is UnusedLength1 + UnusedLength2 + UnusedLength3.
% Query predicate to find the total length of glue sticks that are not used
query(TotalUnusedLength) :-
total_unused_length(TotalUnusedLength).
% Uncomment the line below to run the query
% query(TotalUnusedLength).
%query(TotalUnusedLength).