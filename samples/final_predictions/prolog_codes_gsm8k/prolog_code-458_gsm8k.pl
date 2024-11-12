% Predicate to calculate total points for Joey after his turn
total_points_joey(InitialPoints, PointsScored, TotalPoints) :-
TotalPoints is InitialPoints + PointsScored.
% Predicate to calculate total points for Marcy after her turn
total_points_marcy(InitialPoints, PointsScored, TotalPoints) :-
TotalPoints is InitialPoints + PointsScored.
% Predicate to calculate the difference in points between Joey and Marcy
points_difference(JoeyPoints, MarcyPoints, Difference) :-
Difference is JoeyPoints - MarcyPoints.
% Main predicate to calculate by how many points Joey is winning
joey_winning(InitialJoeyPoints, JoeyScored, InitialMarcyPoints, MarcyScored, WinningBy) :-
total_points_joey(InitialJoeyPoints, JoeyScored, JoeyTotal),
total_points_marcy(InitialMarcyPoints, MarcyScored, MarcyTotal),
points_difference(JoeyTotal, MarcyTotal, WinningBy).
% Query to find out by how many points Joey is winning after scoring 26 points and Marcy scoring 10 points
query(WinningBy) :-
joey_winning(214, 26, 225, 10, WinningBy).
% Uncomment the following line to run the query
% ?- query(WinningBy).
%query(WinningBy).