% Define the constants as facts
radius(10). % radius of the circle traced by the point in cm
rpm(300). % revolutions per minute
time_seconds(30). % time duration in seconds
% Calculate the circumference of the circle
circumference(Radius, Circumference) :-
Circumference is 2 * pi * Radius.
% Calculate the number of revolutions in the given time
total_revolutions(RPM, TimeSeconds, Revolutions) :-
TimeMinutes is TimeSeconds / 60,
Revolutions is RPM * TimeMinutes.
% Calculate the total distance traveled
total_distance(Revolutions, Circumference, Distance) :-
Distance is Revolutions * Circumference.
% Main predicate to calculate the distance traveled by the point
calculate_distance(Distance) :-
radius(Radius),
rpm(RPM),
time_seconds(TimeSeconds),
circumference(Radius, Circumference),
total_revolutions(RPM, TimeSeconds, Revolutions),
total_distance(Revolutions, Circumference, Distance).
% Query predicate to get the result
query(Distance) :-
calculate_distance(Distance).
% Uncomment the line below to run the query and get the result
% ?- query(Distance).
%query(Distance).