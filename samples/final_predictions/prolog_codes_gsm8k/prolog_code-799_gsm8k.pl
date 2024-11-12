% Define the driving speed and hiking speed
driving_speed(50).
hiking_speed(DrivingSpeed, HikingSpeed) :- HikingSpeed is DrivingSpeed / 2 - 5.
% Calculate the distance traveled during hiking
distance_hiking(HikingSpeed, HikingTime, Distance) :- Distance is HikingSpeed * HikingTime.
% Calculate the total distance to the vacation spot
total_distance(DrivingSpeed, HikingSpeed, HikingTime, TotalDistance) :-
distance_hiking(HikingSpeed, HikingTime, DistanceHiking),
TotalDistance is DrivingSpeed * 6 + DistanceHiking.
% Query to calculate the total distance to the vacation spot
query(TotalDistance) :-
driving_speed(DrivingSpeed),
hiking_speed(DrivingSpeed, HikingSpeed),
HikingTime is 1.5,
total_distance(DrivingSpeed, HikingSpeed, HikingTime, TotalDistance).
% Uncomment the following line to run the query and calculate the total distance to the vacation spot
% ?- query(TotalDistance).
%query(TotalDistance).