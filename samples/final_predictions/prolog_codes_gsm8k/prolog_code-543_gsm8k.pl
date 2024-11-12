% Define the hours spent working out in a regular week
hours_per_week(4, 8, TotalRegularHours) :-
TotalRegularHours is 4 * 8.
% Define the hours spent working out in two consecutive weeks
hours_consecutive_weeks(5, 2, TotalConsecutiveHours) :-
TotalConsecutiveHours is 5 * 2.
% Define the hours spent working out in a single week
hours_single_week(6, TotalSingleWeekHours) :-
TotalSingleWeekHours is 6.
% Calculate the total hours spent working out over 8 weeks
total_hours_worked(TotalHours) :-
hours_per_week(4, 8, TotalRegularHours),
hours_consecutive_weeks(5, 2, TotalConsecutiveHours),
hours_single_week(6, TotalSingleWeekHours),
TotalHours is TotalRegularHours + TotalConsecutiveHours + TotalSingleWeekHours.
% Query predicate to run the program and get the result
query(TotalHours) :-
total_hours_worked(TotalHours).
% Uncomment the following line to run the query
% ?- query(TotalHours).
%query(TotalHours).