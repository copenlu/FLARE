% Predicate to calculate the distance hiked based on speed and duration
distance_hiked(Speed, Hours, Distance) :-
Distance is Speed * Hours.
% Calculate the distance Cho hiked
distance_hiked_cho(DistanceCho) :-
distance_hiked(14, 8, DistanceCho).
% Calculate the distance Chloe hiked
distance_hiked_chloe(DistanceChloe) :-
distance_hiked(9, 5, DistanceChloe).
% Predicate to calculate the difference in distance between Cho and Chloe's hikes
difference_distance(DistanceCho, DistanceChloe, Difference) :-
Difference is DistanceCho - DistanceChloe.
% Main predicate to find the difference in distance Cho hiked compared to Chloe
difference_hiked(Difference) :-
distance_hiked_cho(DistanceCho),
distance_hiked_chloe(DistanceChloe),
difference_distance(DistanceCho, DistanceChloe, Difference).
% Query to find out how many kilometers farther Cho hiked compared to Chloe
query(Difference) :-
difference_hiked(Difference).
% Uncomment the following line to run the query
% ?- query(Difference).
%query(Difference).