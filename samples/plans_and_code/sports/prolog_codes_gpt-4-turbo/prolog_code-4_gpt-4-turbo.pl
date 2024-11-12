% Define the sports associated with each player
player_sport(carson_wentz, football).
player_sport(lebron_james, basketball).
player_sport(stephen_curry, basketball).
% Define the actions and the sports they are associated with
action_sport(pick_and_roll, basketball).
action_sport(touchdown_pass, football).
action_sport(three_pointer, basketball).
% Rule to check if a player can perform a specific action based on their sport
can_perform(Player, Action) :-
player_sport(Player, Sport),
action_sport(Action, Sport).
% Query to test if Carson Wentz can perform the pick and roll
query :-
can_perform(carson_wentz, pick_and_roll).
% Uncomment the line below to run the query
 :- query.
%query.