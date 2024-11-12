% Define distance to the first stop
distance_to_first_stop(FirstStop, DistanceToFirstStop) :-
DistanceToFirstStop is FirstStop.
% Define distance to the second stop
distance_to_second_stop(SecondStop, TotalDistance, DistanceToSecondStop) :-
DistanceToSecondStop is TotalDistance - SecondStop.
% Define distance between the stops
distance_between_stops(DistanceToFirstStop, DistanceToSecondStop, DistanceBetweenStops) :-
DistanceBetweenStops is DistanceToSecondStop - DistanceToFirstStop.
% Predicate to encapsulate the entire calculation and output the distance between the stops
calculate_distance_between_stops(DistanceBetweenStops) :-
distance_to_first_stop(20, DistanceToFirstStop),  % First stop at 20 miles
distance_to_second_stop(45, 60, DistanceToSecondStop),  % Second stop at 45 miles, total distance 60 miles
distance_between_stops(DistanceToFirstStop, DistanceToSecondStop, DistanceBetweenStops).
% Query to find the distance Henry traveled between his first and second stops
query(DistanceBetweenStops) :-
calculate_distance_between_stops(DistanceBetweenStops).
% Uncomment the following line to run the query
% ?- query(DistanceBetweenStops).
%query(DistanceBetweenStops).