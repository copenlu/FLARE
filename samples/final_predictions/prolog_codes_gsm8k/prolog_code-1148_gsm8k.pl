% Define the distance_one_round_trip predicate to calculate distance for one round trip
distance_one_round_trip(Speed, Time, Distance) :-
Distance is Speed * Time.
% Define the total_distance_monthly predicate to calculate total distance driven in a month
total_distance_monthly(TotalDistance) :-
distance_one_round_trip(70, 2, DistanceOneRoundTrip),  % Speed 70 mph, Time 2 hours
TotalDistance is DistanceOneRoundTrip * 2 * 2.  % Two visits in a month
% Query predicate to run the program and get the result
query(TotalDistance) :-
total_distance_monthly(TotalDistance).
% Uncomment the following line to run the query
% ?- query(TotalDistance).
%query(TotalDistance).