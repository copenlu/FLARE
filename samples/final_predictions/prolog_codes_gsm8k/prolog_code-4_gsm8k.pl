% Define total distance covered in one sprint
total_distance_one_sprint(Distance, TotalDistance) :-
TotalDistance is Distance * 3.
% Define total distance covered in a week
total_distance_weekly(SprintsPerWeek, TotalDistanceOneSprint, TotalDistanceWeekly) :-
TotalDistanceWeekly is SprintsPerWeek * TotalDistanceOneSprint.
% Calculate total distance James runs in a week
calculate_total_distance_weekly(TotalDistanceWeekly) :-
total_distance_one_sprint(60, TotalDistanceOneSprint),  % Given distance per sprint
total_distance_weekly(3, TotalDistanceOneSprint, TotalDistanceWeekly).  % Given number of sprints per week
% Query to find the total distance James runs in a week
query(TotalDistanceWeekly) :-
calculate_total_distance_weekly(TotalDistanceWeekly).
% Uncomment the following line to run the query
% ?- query(TotalDistanceWeekly).
%query(TotalDistanceWeekly).