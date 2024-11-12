% Define individual howling durations
howling_duration(tobias, 20).
howling_duration(chikote, 40).
howling_duration(igneous, 60).
% Calculate total duration of the three wolves' howls
total_howling_duration(TotalDuration) :-
howling_duration(tobias, TobiasDur),
howling_duration(chikote, ChikoteDur),
howling_duration(igneous, IgneousDur),
TotalDuration is TobiasDur + ChikoteDur + IgneousDur.
% Convert total duration from seconds to minutes
convert_to_minutes(DurationSeconds, DurationMinutes) :-
DurationMinutes is DurationSeconds / 60.
% Main predicate to calculate total duration in minutes
total_howling_duration_minutes(DurationMinutes) :-
total_howling_duration(TotalDuration),
convert_to_minutes(TotalDuration, DurationMinutes).
% Query predicate to find the total duration of the three wolves' howls in minutes
query(DurationMinutes) :-
total_howling_duration_minutes(DurationMinutes).
% Uncomment the line below to run the query
% query(DurationMinutes).
%query(DurationMinutes).