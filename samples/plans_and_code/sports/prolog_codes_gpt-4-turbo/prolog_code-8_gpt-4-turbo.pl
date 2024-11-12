% Define players and their associated sports
player_sport(sam_darnold, football).
player_sport(sidney_crosby, hockey).
player_sport(lebron_james, basketball).
% Define sports and their associated objects
sport_object(football, football).
sport_object(hockey, puck).
sport_object(basketball, basketball).
% Define actions relevant to sports
action_pass(football, football).
action_pass(hockey, puck).
action_pass(basketball, basketball).
% Rule to check if a player can pass a specific object
can_pass(Player, Object) :-
player_sport(Player, Sport),          % Find the sport of the player
sport_object(Sport, SportObject),     % Find the object used in that sport
action_pass(Sport, SportObject),      % Check if passing is an action in that sport with the specific object
Object == SportObject.                % Ensure the object in question is the one used in the sport
% Query to test if Sam Darnold can pass the puck
query :-
can_pass(sam_darnold, puck).
% Uncomment the line below to run the query
 :- query.
%query.