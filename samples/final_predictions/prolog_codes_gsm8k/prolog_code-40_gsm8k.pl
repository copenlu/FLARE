% Define Dana's speeds
speed(walk, 3).  % Assumed atom/predicate
speed(run, RunSpeed) :- WalkSpeed is RunSpeed / 4.
speed(skip, SkipSpeed) :- SkipSpeed is RunSpeed / 2.
% Calculate distances covered in one hour
distance_covered(walk, WalkSpeed, Distance) :- Distance is WalkSpeed.
distance_covered(run, RunSpeed, Distance) :- Distance is RunSpeed.
distance_covered(skip, SkipSpeed, Distance) :- Distance is SkipSpeed.
% Calculate total distance covered in six hours
total_distance_covered(DistanceRun, DistanceWalk, TotalDistance) :-
TotalDistance is (1/3) * DistanceRun * 1 + (2/3) * DistanceWalk * 2.
% Predicate to encapsulate the entire calculation and output total distance covered in six hours
calculate_total_distance(TotalDistance) :-
speed(run, RunSpeed),  % Run speed is calculated based on the walk speed
speed(walk, WalkSpeed),  % Walk speed is assumed to be 3 mph
speed(skip, 3),  % Given that Dana can skip at 3 mph
distance_covered(run, RunSpeed, DistanceRun),
distance_covered(walk, WalkSpeed, DistanceWalk),
total_distance_covered(DistanceRun, DistanceWalk, TotalDistance).
% Query to find the total distance Dana can travel in six hours
query(TotalDistance) :-
calculate_total_distance(TotalDistance).
% Uncomment the following line to run the query
% ?- query(TotalDistance).
%query(TotalDistance).