% Define the total target hours for the achievement
target_hours(30).
% Calculate total hours played for each phase of the play schedule
total_hours_half_hour_per_day_for_2_weeks(TotalHours) :-
TotalHours is 0.5 * 7 * 2.
total_hours_2_hours_per_day_for_1_week(TotalHours) :-
TotalHours is 2 * 7.
% Calculate the remaining hours needed to earn the achievement
remaining_hours_to_achievement(RemainingHours) :-
target_hours(Target),
total_hours_half_hour_per_day_for_2_weeks(TotalHours1),
total_hours_2_hours_per_day_for_1_week(TotalHours2),
TotalHours is TotalHours1 + TotalHours2,
RemainingHours is Target - TotalHours.
% Query to calculate the remaining hours Kris needs to play
query(RemainingHours) :-
remaining_hours_to_achievement(RemainingHours).
% Uncomment the following line to run the query and calculate the remaining hours needed
% ?- query(RemainingHours).
%query(RemainingHours).