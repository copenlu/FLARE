% Define the predicate to calculate the total time Bobby spends on lunches and breaks per day
total_time_per_day(TotalTime) :-
TotalTime is 30 + 2 * 15.  % Lunch break of 30 minutes and 2 breaks of 15 minutes each
% Define the predicate to calculate the total time after 5 days
total_time_after_5_days(TotalTime) :-
total_time_per_day(DailyTime),
TotalTime is DailyTime * 5.  % Total time after 5 days
% Define the predicate to convert total time from minutes to hours
convert_to_hours(TotalTime, TotalHours) :-
TotalHours is TotalTime / 60.  % Convert total time from minutes to hours
% Query to find the total time in hours after 5 days
query_total_time_in_hours(TotalHours) :-
total_time_after_5_days(TotalTime),
convert_to_hours(TotalTime, TotalHours).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_total_time_in_hours(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).