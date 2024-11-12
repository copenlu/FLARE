% Define the time spent on the beach based on the given assumption
time_on_beach(40).  % Assumed time spent on the beach in minutes
% Calculate the speed on the beach
speed_on_beach(Distance, TimeOnBeach, SpeedOnBeach) :-
SpeedOnBeach is Distance / TimeOnBeach.
% Calculate the speed on the sidewalk (twice the speed on the beach)
speed_on_sidewalk(SpeedOnBeach, SpeedOnSidewalk) :-
SpeedOnSidewalk is 2 * SpeedOnBeach.
% Calculate the time spent on the sidewalk
time_on_sidewalk(Distance, SpeedOnSidewalk, TimeOnSidewalk) :-
TimeOnSidewalk is Distance / SpeedOnSidewalk.
% Calculate the total time for the entire walk
total_time(TimeOnBeach, TimeOnSidewalk, TotalTime) :-
TotalTime is TimeOnBeach + TimeOnSidewalk.
% Query predicate to run the program and get the result
query(TotalTime) :-
time_on_beach(TimeOnBeach),
speed_on_beach(2, TimeOnBeach, SpeedOnBeach),
speed_on_sidewalk(SpeedOnBeach, SpeedOnSidewalk),
time_on_sidewalk(1, SpeedOnSidewalk, TimeOnSidewalk),
total_time(TimeOnBeach, TimeOnSidewalk, TotalTime).
% Uncomment the following line to run the query
% ?- query(TotalTime).
%query(TotalTime).