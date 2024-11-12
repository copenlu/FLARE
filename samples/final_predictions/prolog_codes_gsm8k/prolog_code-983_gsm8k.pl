% Define the rule to calculate the total number of balls
total_balls(JasonBalls, JordanBalls, JeffreyBalls, TotalBalls) :-
JordanBalls is 2 * JasonBalls,
JeffreyBalls is JasonBalls / 2,
TotalBalls is JasonBalls + JordanBalls + JeffreyBalls.
% Calculate the total number of balls based on the given information
calculate_total_balls(TotalBalls) :-
total_balls(2, JordanBalls, JeffreyBalls, TotalBalls).  % Given that Jason carried 2 balls
% Query to find the total number of balls brought to practice
query(TotalBalls) :-
calculate_total_balls(TotalBalls).
% Uncomment the following line to run the query
% ?- query(TotalBalls).
%query(TotalBalls).