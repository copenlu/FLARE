% Define the time Sandy walked on the first day
time_walked_first_day(8).
% Calculate the time Sandy walked on the second day (half of the time on the first day)
time_walked_second_day(TimeSecondDay) :-
time_walked_first_day(TimeFirstDay),
TimeSecondDay is TimeFirstDay / 2.
% Calculate the total time Sandy walked over the two days
total_time_walked(TotalTime) :-
time_walked_first_day(TimeFirstDay),
time_walked_second_day(TimeSecondDay),
TotalTime is TimeFirstDay + TimeSecondDay.
% Convert the total time walked to minutes
convert_to_minutes(TimeInHours, TimeInMinutes) :-
TimeInMinutes is TimeInHours * 60.
% Query predicate to find the total time Sandy walked in minutes over the two days
query(TotalTimeInMinutes) :-
total_time_walked(TotalTimeInHours),
convert_to_minutes(TotalTimeInHours, TotalTimeInMinutes).
% Uncomment the line below to run the query
% query(TotalTimeInMinutes).
%query(TotalTimeInMinutes).