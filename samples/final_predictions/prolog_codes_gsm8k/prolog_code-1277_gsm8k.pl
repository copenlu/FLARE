% Define the rule to calculate the total points scored by Ara in four years
total_points_scored(TotalPoints) :-
GamesPerYear = 40,          % Assumed atom/predicate: Number of games Ara plays per year
Years = 4,                  % Assumed atom/predicate: Number of years Ara has been playing
TotalGames is GamesPerYear * Years,
ScorePerGame = 21,          % Assumed atom/predicate: Score Ara gets per game
TotalPoints is TotalGames * ScorePerGame.
% Query to find the total points scored by Ara in four years
query_total_points_scored(TotalPoints) :-
total_points_scored(TotalPoints).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_total_points_scored(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).