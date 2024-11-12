% Define the distance to the museum and speed of travel
distance_to_museum(150).  % Assumed distance to the museum in miles
speed(75).  % Assumed speed in mph
% Calculate the time taken to travel a certain distance at a given speed
time_taken_to_museum(Distance, Speed, Time) :-
Time is Distance / Speed.
% Calculate the total time Jack is gone from home
total_time_gone(TimeDriving, TimeAtMuseum, TotalTime) :-
TotalTime is TimeDriving * 2 + TimeAtMuseum.
% Given data
time_at_museum(6).  % Assumed time spent at the museum in hours
% Calculate the time taken to drive to the museum
time_taken_to_museum(Distance, Speed, TimeDriving),
distance_to_museum(Distance),
speed(Speed),
time_at_museum(TimeAtMuseum),
total_time_gone(TimeDriving, TimeAtMuseum, TotalTime).
% Query predicate to find the total time Jack is gone from home
query(TotalTime) :-
total_time_gone(_, _, TotalTime).
% Uncomment the line below to run the query
% ?- query(TotalTime).
%query(TotalTime).