% Define the predicate to calculate Jim's points based on Mike's points
jim_points(MikePoints, JimPoints) :-
JimPoints is MikePoints - 3.
% Define the predicate to calculate Tony's points based on Mike's points
tony_points(MikePoints, TonyPoints) :-
TonyPoints is MikePoints * 2.
% Define the predicate to calculate total points after the fourth round with the extra point rule
total_points_after_round4(Points, TotalPoints) :-
(Points > 20 -> TotalPoints is Points + 1 ; TotalPoints is Points).
% Define the predicate to calculate the overall total points for all three players
total_points(MikePoints, JimPoints, TonyPoints, Total) :-
Total is MikePoints + JimPoints + TonyPoints.
% Query predicate to run the program and get the result
query(Total) :-
jim_points(21, Jim),
tony_points(21, Tony),
total_points_after_round4(21, MikeTotal),
total_points(MikeTotal, Jim, Tony, Total).
% Uncomment the following line to run the query
% ?- query(Total).
%query(Total).