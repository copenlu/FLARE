% Define the rule to calculate the total number of games Steve has at the end of each year
games_after_year(Year, Games) :-
BirthdayGames is 5,
ChristmasGames is 5,
MonthlyGames is Year * (1 + Year),
Games is BirthdayGames + ChristmasGames + MonthlyGames.
% Calculate the total number of games Steve has after 3 years
total_games_after_3_years(TotalGames) :-
games_after_year(1, GamesYear1),
games_after_year(2, GamesYear2),
games_after_year(3, GamesYear3),
TotalGames is GamesYear1 + GamesYear2 + GamesYear3.
% Query to find the total number of games Steve has after 3 years
query(TotalGames) :-
total_games_after_3_years(TotalGames).
% Uncomment the following line to run the query
% ?- query(TotalGames).
%query(TotalGames).