% Define facts about players known for buzzer-beaters
buzzer_beater(jonas_valanciunas). % Assumed atom/predicate
buzzer_beater(lebron_james). % Assumed atom/predicate
buzzer_beater(stephen_curry). % Assumed atom/predicate
% Define facts about players' teams
player_team(jonas_valanciunas, memphis_grizzlies). % Assumed atom/predicate
player_team(lebron_james, los_angeles_lakers). % Assumed atom/predicate
player_team(stephen_curry, golden_state_warriors). % Assumed atom/predicate
% Define a rule to check if a player is known for buzzer-beaters
is_buzzer_beater(Player) :-
buzzer_beater(Player).
% Define a rule to find the team of a buzzer-beater player
buzzer_beater_team(Player, Team) :-
buzzer_beater(Player),
player_team(Player, Team).
% Query to check if Jonas Valanciunas is known for buzzer-beaters and find his team
query :-
is_buzzer_beater(jonas_valanciunas),
buzzer_beater_team(jonas_valanciunas, Team),
write('Jonas Valanciunas is a known buzzer-beater and plays for '), write(Team), nl.
% Uncomment the line below to run the query
% query.
% query.