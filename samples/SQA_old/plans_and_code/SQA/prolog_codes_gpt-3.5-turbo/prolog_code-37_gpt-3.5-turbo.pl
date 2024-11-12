% Define facts about locations
location(agadir, 25, 0.5, yes, high).
location(casablanca, 20, 1.0, yes, high).
location(tangier, 22, 1.5, no, medium).
% Attributes: location(Name, AvgTemp, WaveHeight, WaterSkiFacility, TourismLevel).
% Define rules for ideal water skiing conditions
ideal_location(Name) :-
location(Name, Temp, Wave, Facility, Tourism),
Temp >= 20,
Temp =< 30,
Wave < 1.2,
Facility == yes,
Tourism == high.
% Querying the system
query_ideal_locations :-
findall(Name, ideal_location(Name), List),
List.
% Driver Predicate
query :- query_ideal_locations.
%query.