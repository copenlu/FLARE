% Facts
location(bucharest, (44.4268, 26.1025)).
location(new_york_city, (40.7128, -74.0060)).
bird_capabilities(wandering_albatross, 5000). % Assumed atom/predicate
% Distance calculation (hypothetical formula)
distance(City1, City2, Distance) :-
location(City1, (Lat1, Lon1)),
location(City2, (Lat2, Lon2)),
Distance is sqrt((Lat2-Lat1)^2 + (Lon2-Lon1)^2).
% Rule to check travel feasibility
can_travel_without_rest(Bird, City1, City2) :-
bird_capabilities(Bird, MaxDistance),
distance(City1, City2, Distance),
Distance =< MaxDistance.
% Query predicate
query :- can_travel_without_rest(wandering_albatross, bucharest, new_york_city).
%query.