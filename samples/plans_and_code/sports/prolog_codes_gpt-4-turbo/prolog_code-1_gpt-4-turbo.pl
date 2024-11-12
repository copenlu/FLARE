% Define roles of players
player_role(liam_hendriks, pitcher).
player_role(john_doe, batter).
% Define events where specific roles can participate
event(world_series).
% Define actions possible by players
action(hit).
action_type(hit, double).  % Types of hits, double is one type
% Define conditions under which a pitcher can hit
can_pitcher_hit_in_event(pitcher, world_series).  % Assumed predicate: pitchers can hit in the World Series
% Define a rule to check if a player can hit a double in the World Series
can_hit_double(Player, Event) :-
player_role(Player, Role),
event(Event),
action(hit),
action_type(hit, double),
can_pitcher_hit_in_event(Role, Event).
% Query to check if Liam Hendriks can hit a double in the World Series
query :- can_hit_double(liam_hendriks, world_series).
% Uncomment the line below to run the query
 :- query.
%query.