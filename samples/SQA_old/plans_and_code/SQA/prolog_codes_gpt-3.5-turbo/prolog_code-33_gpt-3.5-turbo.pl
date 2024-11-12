% Facts defining cities and their coast
city_on_coast(miami, east).
city_on_coast(los_angeles, west).
city_on_coast(seattle, west).
city_on_coast(new_york, east).
% Predicate to check if a city is on the West Coast
is_on_west_coast(City) :-
city_on_coast(City, west).
% User interaction predicate
check_coast() :-
(   is_on_west_coast(City)
->  true
;   true ).
% Handling unknown cities
is_on_west_coast(City) :-
\+ city_on_coast(City, _).
% Assumed atom/predicate
% Query predicate
query :- check_coast().
%query.