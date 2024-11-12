% Define points scored in the first 20 minutes
points_in_first_20_minutes(4).
% Define points scored in the second 20 minutes (25% more than the first 20 minutes)
points_in_second_20_minutes(FirstPoints, SecondPoints) :-
SecondPoints is FirstPoints + (FirstPoints * 0.25).
% Define total points scored in 40 minutes
total_points_scored(FirstPoints, SecondPoints, TotalPoints) :-
TotalPoints is FirstPoints + SecondPoints.
% Calculate total points scored by Mike
calculate_total_points_scored(TotalPoints) :-
points_in_first_20_minutes(4),  % Given in the problem
points_in_second_20_minutes(4, SecondPoints),  % Calculate points in the second 20 minutes
total_points_scored(4, SecondPoints, TotalPoints).  % Calculate total points scored
% Query to find the total points scored by Mike in 40 minutes
query(TotalPoints) :-
calculate_total_points_scored(TotalPoints).
% Uncomment the following line to run the query
% ?- query(TotalPoints).
%query(TotalPoints).