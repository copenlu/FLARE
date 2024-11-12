% Define the rule to calculate the number of games Bobby has
calculate_bobby_games(BrianGames, BobbyGames) :-
BrianAdjusted is BrianGames - 5,  % Brian's games after losing 5
BobbyGames is 3 * BrianAdjusted - 5.  % Bobby's games based on the relationship
% Query to find out how many games Bobby has
query(BobbyGames) :-
calculate_bobby_games(20, BobbyGames).  % Brian initially had 20 games
% Uncomment the following line to run the query and find out how many games Bobby has
% ?- query(BobbyGames).
%query(BobbyGames).