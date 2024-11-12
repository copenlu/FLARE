% Define a fact for each player and their respective penalties
penalty(kyle_palmieri, slashing). % Assumed atom/predicate
penalty(john_doe, high_sticking). % Assumed atom/predicate
penalty(jane_doe, tripping). % Assumed atom/predicate
% Define a rule to check if a player has been called for a specific penalty
has_been_penalized(Player, Infraction) :-
penalty(Player, Infraction).
% Define a rule to list all penalties for a given player
list_penalties(Player, Penalties) :-
findall(Infraction, penalty(Player, Infraction), Penalties).
% Define a rule to check if any player has been penalized for slashing
any_slashing_penalty :-
penalty(_, slashing).
% Define a rule to count the number of penalties a player has
count_penalties(Player, Count) :-
findall(Infraction, penalty(Player, Infraction), Infractions),
length(Infractions, Count).
% Define a rule to find players with more than one penalty
multiple_penalties(Player) :-
count_penalties(Player, Count),
Count > 1.
% Query to check if Kyle Palmieri was called for slashing
query :-
has_been_penalized(kyle_palmieri, slashing).
% Uncomment the line below to run the query
% query.
% query.