% Define constants
hours_per_day(8).
walking_break_duration(5).
% Calculate total minutes walked after a certain number of days
calculate_total_minutes_walked(Days, TotalMinutes) :-
hours_per_day(HoursPerDay),
walking_break_duration(WalkingBreak),
TotalHours is HoursPerDay * Days,
TotalMinutes is TotalHours * WalkingBreak.
% Query to calculate total minutes walked after 5 days
query(TotalMinutes) :-
calculate_total_minutes_walked(5, TotalMinutes).
% Uncomment the following line to run the query and calculate the total minutes walked after 5 days
% ?- query(TotalMinutes).
%query(TotalMinutes).