% Define sports associated with players
player_sport(joao_moutinho, soccer). % Assumed atom/predicate
player_sport(tom_brady, football). % Assumed atom/predicate
% Define actions and the sports they belong to
action_sport(screen_pass, football). % Assumed atom/predicate
action_sport(goal_kick, soccer). % Assumed atom/predicate
% Define events and the sports they belong to
event_sport(nfc_championship, football). % Assumed atom/predicate
event_sport(world_cup, soccer). % Assumed atom/predicate
% Rule to check if a player can perform an action
can_perform_action(Player, Action) :-
player_sport(Player, Sport),
action_sport(Action, Sport).
% Rule to check if a player can participate in an event
can_participate_in_event(Player, Event) :-
player_sport(Player, Sport),
event_sport(Event, Sport).
% Rule to check if a player can perform an action in a specific event
can_perform_action_in_event(Player, Action, Event) :-
can_perform_action(Player, Action),
can_participate_in_event(Player, Event).
% Query to check if Joao Moutinho can catch a screen pass in the NFC championship
query :-
can_perform_action_in_event(joao_moutinho, screen_pass, nfc_championship).
% Uncomment the line below to run the query
 :- query.
%query.