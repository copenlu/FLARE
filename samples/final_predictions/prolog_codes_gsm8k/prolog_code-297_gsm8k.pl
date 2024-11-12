% Define the predicate to calculate the time taken to cover a distance at a given speed
time_taken(Distance, Speed, Time) :-
Time is Distance / Speed.
% Calculate the time taken by the car in the fast lane to cover 480 miles at 60 miles per hour
time_taken(480, 60, TimeFastLane).
% Calculate the speed of the car in the slow lane (half the speed of the fast lane)
SlowLaneSpeed is 60 / 2.
% Calculate the time taken by the car in the slow lane to cover the same distance as the fast lane
time_taken(480, SlowLaneSpeed, TimeSlowLane).
% Query predicate to run the program and get the result
query(TimeSlowLane) :-
time_taken(480, SlowLaneSpeed, TimeSlowLane).
% Uncomment the following line to run the query
% ?- query(TimeSlowLane).
%query(TimeSlowLane).