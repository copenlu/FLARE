% Define predicates to calculate distance traveled at a given speed for a specific duration
distance_traveled(Speed, Time, Distance) :-
Distance is Speed * Time.
% Calculate total distance traveled during the trip
total_distance_traveled(TotalDistance) :-
distance_traveled(60, 2, Distance1),
distance_traveled(30, 1, Distance2),
TotalDistance is Distance1 + Distance2.
% Calculate total time taken for the trip
total_time_taken(TotalTime) :-
TotalTime is 2 + 1.
% Calculate the average speed during the trip
average_speed(AverageSpeed) :-
total_distance_traveled(TotalDistance),
total_time_taken(TotalTime),
AverageSpeed is TotalDistance / TotalTime.
% Query to calculate the average speed during the trip
query(AverageSpeed) :-
average_speed(AverageSpeed).
% Uncomment the following line to run the query and calculate the average speed
% ?- query(AverageSpeed).
%query(AverageSpeed).