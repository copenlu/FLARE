% Define the rule to calculate the percentage of distance covered
percentage_distance_covered(DistanceCovered, TotalDistance, Percentage) :-
TotalDistanceCovered is DistanceCovered * 3, % Total distance covered in 3 days
Percentage is (TotalDistanceCovered / TotalDistance) * 100.
% Query to find the percentage of distance covered by Michael
query_percentage_distance_covered(Percentage) :-
TotalDistance = 6000, % Total distance between Alaska and Texas
DistanceCovered = 50 * 24 * 3, % Distance covered in 3 days at 50 km/hr
percentage_distance_covered(DistanceCovered, TotalDistance, Percentage).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_percentage_distance_covered(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).