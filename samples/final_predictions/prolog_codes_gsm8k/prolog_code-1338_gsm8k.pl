% Define the rule for calculating the number of beakers lost
calculate_beakers_lost :-
RequestedTestTubes = 16,
RequestedBeakers = 7,
RequestedPetriDishes = 14,
ActualTestTubes is RequestedTestTubes / 2,
ActualPetriDishes is RequestedPetriDishes + 2,
TotalItems is ActualTestTubes + RequestedBeakers + ActualPetriDishes,
TotalItems =:= 29,
BeakersLost is RequestedBeakers - RequestedBeakers.
% Define a predicate to execute the specific query
query(BeakersLost) :-
calculate_beakers_lost.
% Uncomment the line below to run the query
% ?- query(BeakersLost).
%query(BeakersLost).