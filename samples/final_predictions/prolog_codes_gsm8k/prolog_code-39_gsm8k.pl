% Define the total time John spends running each week
total_time_running(Day1Time, Day2Time, TotalTime) :-
TotalTime is Day1Time + 2 * (Day2Time / 2).
% Define John's running speed in miles per hour
running_speed(TotalDistance, TotalTime, Speed) :-
Speed is TotalDistance / TotalTime.
% Predicate to encapsulate the entire calculation and output John's running speed
calculate_running_speed(Speed) :-
total_time_running(3, 3, TotalTime),  % Day1Time = 3 hours, Day2Time = 3 hours
running_speed(60, TotalTime, Speed).  % TotalDistance = 60 miles
% Query to find John's running speed
query(Speed) :-
calculate_running_speed(Speed).
% Uncomment the following line to run the query
% ?- query(Speed).
%query(Speed).