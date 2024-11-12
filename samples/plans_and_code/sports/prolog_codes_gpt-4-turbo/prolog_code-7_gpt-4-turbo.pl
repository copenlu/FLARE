% Define the sports associated with each player
player_sport(draymond_green, basketball). % Assumed atom/predicate
player_sport(tom_brady, football). % Assumed atom/predicate
% Define the actions and the sports they are associated with
action_sport(throw_touchdown, football). % Assumed atom/predicate
action_sport(shoot_basket, basketball). % Assumed atom/predicate
% Rule to check if a player can perform a specific action based on their sport
can_perform(Player, Action) :-
player_sport(Player, Sport), % Fetch the sport of the player
action_sport(Action, Sport). % Check if the action is associated with that sport
% Query to test if Draymond Green can throw a touchdown
query :-
can_perform(draymond_green, throw_touchdown).
% Uncomment the line below to run the query
 :- query.
%query.