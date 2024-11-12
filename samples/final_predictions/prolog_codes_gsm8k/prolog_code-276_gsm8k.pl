% Define the rule for calculating the number of blue golf balls
blue_golf_balls(TotalBalls, BlueGolfBalls) :-
TotalGolfBalls is TotalBalls / 2,
BlueGolfBalls is TotalGolfBalls / 2.
% Main predicate to compute the number of blue golf balls juggled
calculate_blue_golf_balls(BlueGolfBalls) :-
TotalBalls = 16,  % Total number of balls juggled
% Calculate the number of blue golf balls
blue_golf_balls(TotalBalls, BlueGolfBalls).
% Query predicate to get the number of blue golf balls
query(BlueGolfBalls) :-
calculate_blue_golf_balls(BlueGolfBalls).
% Uncomment the following line to run the query
% query(BlueGolfBalls).
%query(BlueGolfBalls).