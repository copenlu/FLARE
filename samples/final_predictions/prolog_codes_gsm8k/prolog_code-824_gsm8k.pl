% Define the speeds of the cars
speed(car1, 60).
speed(car2, 70).
% Calculate the distance traveled by a car in a given time
distance_traveled(Car, Time, Distance) :-
speed(Car, Speed),
Distance is Speed * Time.
% Calculate the distance separating the two cars after 2 hours
calculate_distance_separation(Distance) :-
distance_traveled(car1, 2, DistanceCar1),
distance_traveled(car2, 2, DistanceCar2),
Distance is DistanceCar2 - DistanceCar1.
% Query to calculate the distance separating the two cars after 2 hours
query(Distance) :-
calculate_distance_separation(Distance).
% Uncomment the following line to run the query and calculate the distance separating the two cars after 2 hours
% ?- query(Distance).
%query(Distance).