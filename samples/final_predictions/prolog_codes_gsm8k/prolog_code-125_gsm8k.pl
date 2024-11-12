% Define initial hours slept on Monday
hours_slept(monday, 8).
% Calculate hours slept on Tuesday and Wednesday
hours_slept(tuesday, Hours) :-
hours_slept(monday, MondayHours),
Hours is MondayHours - 2.
hours_slept(wednesday, Hours) :-
hours_slept(monday, MondayHours),
Hours is MondayHours - 2.
% Calculate hours slept for the rest of the week
hours_slept(rest_of_week, Hours) :-
hours_slept(tuesday, TuesdayHours),
hours_slept(wednesday, WednesdayHours),
Hours is TuesdayHours + WednesdayHours + 1.
% Calculate total hours slept throughout the week
total_hours_slept(TotalHours) :-
hours_slept(monday, MondayHours),
hours_slept(tuesday, TuesdayHours),
hours_slept(wednesday, WednesdayHours),
hours_slept(rest_of_week, RestOfWeekHours),
TotalHours is MondayHours + TuesdayHours + WednesdayHours + RestOfWeekHours.
% Query to calculate the total hours Sadie slept throughout the week
query(TotalHours) :-
total_hours_slept(TotalHours).
% Uncomment the following line to run the query and calculate the total hours slept throughout the week
% ?- query(TotalHours).
%query(TotalHours).