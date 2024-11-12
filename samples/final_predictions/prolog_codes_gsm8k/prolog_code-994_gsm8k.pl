% Define the rule for calculating total players in both teams combined
total_players_combined(CarltonPlayers, ZekePlayers, TotalPlayers) :-
ZekePlayers is CarltonPlayers + 7,
TotalPlayers is CarltonPlayers + ZekePlayers.
% Calculate the total number of players in both teams combined
calculate_total_players_combined(TotalPlayers) :-
total_players_combined(13, ZekePlayers, TotalPlayers).  % Carlton's team has 13 players
% Query to find the total number of players in both teams combined
query(TotalPlayers) :-
calculate_total_players_combined(TotalPlayers).
% Uncomment the following line to run the query
% ?- query(TotalPlayers).
%query(TotalPlayers).