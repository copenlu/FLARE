% Define the distance James runs per day, days per week, and running speed
distance_per_day(12).
days_per_week(5).
running_speed(10).
% Calculate the total running time in a week
calculate_running_time(TotalHours) :-
distance_per_day(DistancePerDay),
days_per_week(DaysPerWeek),
running_speed(Speed),
TotalDistance is DistancePerDay * DaysPerWeek,
TotalHours is TotalDistance / Speed.
% Query to calculate the total hours James runs in a week
query(TotalHours) :-
calculate_running_time(TotalHours).
% Uncomment the following line to run the query and calculate the total hours James runs in a week
% ?- query(TotalHours).
%query(TotalHours).