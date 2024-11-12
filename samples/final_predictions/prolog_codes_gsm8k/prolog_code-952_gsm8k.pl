% Define the rule to calculate the distance traveled
calculate_distance(Speed, Time, Distance) :-
Distance is Speed * Time.
% Calculate the distance traveled by the bus and the car
calculate_distance(60, 5, BusDistance),
calculate_distance(30, 8, CarDistance).
% Define the rule to calculate the difference in distances
calculate_difference(BusDistance, CarDistance, Difference) :-
Difference is BusDistance - CarDistance.
% Query to find the difference in distances traveled by the bus and the car
query(Difference) :-
calculate_difference(BusDistance, CarDistance, Difference).
% Uncomment the following line to run the query
% ?- query(Difference).
%query(Difference).