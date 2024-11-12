% Define facts about players and their ability to perform basketball moves
can_perform(malcolm_brogdon, bank_shot). % Assumed atom/predicate
can_perform(lebron_james, dunk). % Assumed atom/predicate
can_perform(stephen_curry, three_pointer). % Assumed atom/predicate
% Define a rule to check if a player can perform a specific move
player_can_perform(Player, Move) :-
can_perform(Player, Move).
% Define a rule to check if a player banked a shot
player_banked_shot(Player) :-
player_can_perform(Player, bank_shot).
% Query to check if Malcolm Brogdon banked the shot
query :-
player_banked_shot(malcolm_brogdon).
% Uncomment the line below to run the query
 :- query.
%query.