% Define time spent at each location
time_spent(library, 6).
time_spent(fire_station, 13).
% Calculate total time spent
total_time_spent(TotalTimeSpent) :-
time_spent(library, TimeToLibrary),
time_spent(fire_station, TimeToFireStation),
TotalTimeSpent is TimeToLibrary + TimeToFireStation.
% Calculate time remaining to reach school
calculate_time_remaining(TimeRemaining) :-
TotalTimeToSchool = 30,
total_time_spent(TotalTimeSpent),
TimeRemaining is TotalTimeToSchool - TotalTimeSpent.
% Query to calculate how much longer John and Jack have to reach school
query(TimeRemaining) :-
calculate_time_remaining(TimeRemaining).
% Uncomment the following line to run the query and calculate the time remaining
% ?- query(TimeRemaining).
%query(TimeRemaining).