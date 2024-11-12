% Define species and their habitats
species_location(thalassarche_melanophris, southern_ocean).
species_location(diomedea_exulans, southern_ocean).
% Assumed atom/predicate: species_location(unknown_species, unknown_location).
% Define habitat characteristics
habitat(southern_ocean, [cold, open_water, high_winds]).
% Logical rule to determine if a species can inhabit a location
can_inhabit(Species, Location) :- species_location(Species, Location).
can_inhabit(Species, Location) :- \+ species_location(Species, _).
% Query predicate
query :- can_inhabit(thalassarche_melanophris, southern_ocean),
can_inhabit(diomedea_exulans, southern_ocean),
can_inhabit(unknown_species, unknown_location). % Assumed atom/predicate: unknown_species, unknown_location.
%query.