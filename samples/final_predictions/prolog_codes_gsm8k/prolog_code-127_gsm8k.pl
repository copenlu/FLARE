% Define the distance covered at a given speed for a specified duration
distance_at_speed(Duration, Speed, Distance) :-
Distance is Duration * Speed.
% Define the total distance covered by Rosie in the given total duration
total_distance(Duration1, Speed1, Duration2, Speed2, TotalDuration, TotalDistance) :-
distance_at_speed(Duration1, Speed1, Distance1),
RemainingDuration is TotalDuration - Duration1,
distance_at_speed(Duration2, Speed2, Distance2),
TotalDistance is Distance1 + Distance2.
% Calculate the total distance Rosie can run in 7 hours
query(TotalDistance) :-
total_distance(3, 10, 4, 5, 7, TotalDistance).
% Uncomment the following line to run the query and find out the total distance Rosie can run in 7 hours.
% ?- query(TotalDistance).
%query(TotalDistance).