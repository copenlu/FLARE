% Define playtime for each individual based on their skill level compared to Jack
playtime(jack, 20).
playtime(friend1, 10).
playtime(friend2, 10).
playtime(friend3, 30).
% Define cost per minute
cost_per_minute(1).
% Calculate total playtime for all individuals over 4 hours
total_playtime(TotalPlaytime) :-
playtime(jack, JackTime),
playtime(friend1, Friend1Time),
playtime(friend2, Friend2Time),
playtime(friend3, Friend3Time),
TotalPlaytime is (JackTime + Friend1Time + Friend2Time + Friend3Time) * 60 * 4.
% Calculate total cost based on playtime and cost per minute
total_cost(TotalCost) :-
total_playtime(TotalPlaytime),
cost_per_minute(Cost),
TotalCost is TotalPlaytime * Cost.
% Query to calculate the total cost of gameplay
query(TotalCost) :-
total_cost(TotalCost).
% Uncomment the following line to run the query and calculate the total cost
% ?- query(TotalCost).
%query(TotalCost).