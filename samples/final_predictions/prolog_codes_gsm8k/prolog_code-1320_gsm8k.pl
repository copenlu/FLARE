% Define the rule for calculating total time spent on meditation per day
time_meditation_per_day(15, TotalTime) :-
TotalTime is 2 * 15. % Twice a day
% Define the rule for calculating total time spent on yoga practice per week
time_yoga_per_week(5, 60, TotalTime) :-
TotalTime is 5 * 60. % 5 days a week, 1 hour each day
% Define the rule for calculating total time spent on both activities per week
total_time_per_week(MeditationTime, YogaTime, TotalTime) :-
TotalTime is MeditationTime + YogaTime.
% Define the rule for calculating total time spent over 4 weeks
total_time_over_4_weeks(TotalTimePerWeek, TotalTime) :-
TotalTime is TotalTimePerWeek * 4.
% Define a predicate to execute the specific query with given values
query(TotalTime) :-
time_meditation_per_day(15, MeditationTime),
time_yoga_per_week(5, 60, YogaTime),
total_time_per_week(MeditationTime, YogaTime, TotalTimePerWeek),
total_time_over_4_weeks(TotalTimePerWeek, TotalTime).
% Uncomment the line below to run the query
% ?- query(TotalTime).
%query(TotalTime).