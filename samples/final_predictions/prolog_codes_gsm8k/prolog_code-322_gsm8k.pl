% Define the rule to calculate the number of players on each unit
number_of_players(Defense, Offense, SpecialTeams) :-
Offense is 2 * Defense,
SpecialTeams is 0.5 * Defense.
% Define the total number of team members and calculate the number of players on the defense
total_players(Defense) :-
number_of_players(Defense, Offense, SpecialTeams),
TotalPlayers is Defense + Offense + SpecialTeams,
TotalPlayers = 105.
% Define a predicate to execute the specific query with given values
query(Defense) :-
total_players(Defense).
% Uncomment the line below to run the query
% ?- query(Defense).
%query(Defense).