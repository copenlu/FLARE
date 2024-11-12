% Define rules to calculate distance covered during each segment
distance_at_speed(Speed, Time, Distance) :-
Distance is Speed * Time.
% Define the total distance covered by summing up distances in each segment
total_distance_covered(TotalDistance) :-
distance_at_speed(60, 3, Dist1),
distance_at_speed(0, 2, Dist2), % Standstill traffic
distance_at_speed(30, 0.5, Dist3),
distance_at_speed(80, 1.5, Dist4), % Remaining time after standstill
TotalDistance is Dist1 + Dist2 + Dist3 + Dist4.
% Predicate to encapsulate the entire calculation and output the total distance covered
calculate_total_distance(TotalDistance) :-
total_distance_covered(TotalDistance).
% Query to find the total distance covered by John at the end of 4 hours
query(TotalDistance) :-
calculate_total_distance(TotalDistance).
% Uncomment the following line to run the query
% ?- query(TotalDistance).
%query(TotalDistance).