% Define the duration of Hallie's practice on Tuesdays
tuesday_practice(1).
% Define the duration of Hallie's practice on Thursdays
thursday_practice(2).
% Calculate the duration of Hallie's practice on Saturdays based on Tuesdays
saturday_practice(TuesdayHours, SaturdayHours) :-
SaturdayHours is TuesdayHours * 2.
% Calculate the total hours of dance practice per week
total_weekly_practice(TuesdayHours, ThursdayHours, SaturdayHours, TotalHours) :-
tuesday_practice(TuesdayHours),
thursday_practice(ThursdayHours),
saturday_practice(TuesdayHours, SaturdayHours),
TotalHours is TuesdayHours + ThursdayHours + SaturdayHours.
% Query to find the total hours of dance practice per week
query(TotalHours) :-
total_weekly_practice(_, _, _, TotalHours).
% Uncomment the following line to run the query
% ?- query(TotalHours).
%query(TotalHours).