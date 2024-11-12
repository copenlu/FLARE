% Define the rule to calculate total distance covered by a train
total_distance_covered(Direction1, Distance1, Direction2, Distance2, TotalDistance) :-
TotalDistance is Distance1 + Distance2.
% Calculate the total distance covered by each train
total_distance_covered(train1, 80, northwards, 150, TotalDistance1),
total_distance_covered(train2, 80, northwards, 150, TotalDistance2).
% Predicate to encapsulate the entire calculation and output the total distance covered by each train
calculate_total_distances(TotalDistance1, TotalDistance2) :-
total_distance_covered(train1, 80, northwards, 150, TotalDistance1),
total_distance_covered(train2, 80, northwards, 150, TotalDistance2).
% Query to find the total distance covered by each train
query(TotalDistance1, TotalDistance2) :-
calculate_total_distances(TotalDistance1, TotalDistance2).
% Uncomment the following line to run the query
% ?- query(TotalDistance1, TotalDistance2).
%query(TotalDistance1, TotalDistance2).