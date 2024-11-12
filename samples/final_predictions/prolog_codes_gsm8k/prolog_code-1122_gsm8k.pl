% Define a predicate to calculate the distance covered by a train
distance_covered(Speed, Time, Distance) :-
Distance is Speed * Time.
% Calculate the distances covered by each train
distance_covered(60, 3, Distance1),
distance_covered(30, 3, Distance2).
% Define a predicate to calculate the total distance between the two trains
total_distance(Distance1, Distance2, TotalDistance) :-
TotalDistance is Distance1 + Distance2.
% Query to find the total distance between the two trains after 3 hours
query_total_distance(TotalDistance) :-
distance_covered(60, 3, Distance1),
distance_covered(30, 3, Distance2),
total_distance(Distance1, Distance2, TotalDistance).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_total_distance(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).