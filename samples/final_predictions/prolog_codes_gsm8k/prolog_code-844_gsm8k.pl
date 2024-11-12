% Define Sasha's points in the first game
sasha_points_first_game(14).
% Calculate Julie's points in the first game (4 fewer points than Sasha)
julie_points_first_game(JuliePointsFirstGame) :-
sasha_points_first_game(SashaPointsFirstGame),
JuliePointsFirstGame is SashaPointsFirstGame - 4.
% Calculate Julie's points in the second game (same as first game)
julie_points_second_game(JuliePointsSecondGame) :-
julie_points_first_game(JuliePointsFirstGame),
JuliePointsSecondGame is JuliePointsFirstGame.
% Calculate Sasha's points in the second game (6 fewer points than Julie's first game)
sasha_points_second_game(SashaPointsSecondGame) :-
julie_points_first_game(JuliePointsFirstGame),
SashaPointsSecondGame is JuliePointsFirstGame - 6.
% Calculate total points scored by Sasha in both games
total_sasha_points(TotalSashaPoints) :-
sasha_points_first_game(SashaPointsFirstGame),
sasha_points_second_game(SashaPointsSecondGame),
TotalSashaPoints is SashaPointsFirstGame + SashaPointsSecondGame.
% Query predicate to find the total points scored by Sasha in both games
query(TotalSashaPoints) :-
total_sasha_points(TotalSashaPoints).
% Uncomment the line below to run the query
% query(TotalSashaPoints).
%query(TotalSashaPoints).