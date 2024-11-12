% Define the habitat and native regions of caracals
habitat(caracal, [africa, middle_east, central_asia, india]).
% Define the native wildlife regions in Texas
native_wildlife_region(texas, [north_america]).
% Define the University of Houston's environment
university_environment(university_of_houston, urban).
% Define the legality of owning exotic pets in Texas
exotic_pet_legality(texas, legal). % Assumed atom/predicate
% Define a predicate to check if a species is native to a region
is_native(Species, Region) :-
habitat(Species, Habitats),
member(Region, Habitats).
% Define a predicate to check if a species can be an exotic pet in a region
can_be_exotic_pet(Species, State) :-
exotic_pet_legality(State, legal),
\+ is_native(Species, north_america).
% Define a predicate to check if an environment can support a species
can_support_species(Environment, Species) :-
% Assumed logic: Urban environments are less likely to support wild caracals
university_environment(Environment, urban),
Species = caracal,
fail.
% Define a predicate to check for possible sightings based on presence of exotic pets
possible_exotic_sighting(Species, Environment, State) :-
can_be_exotic_pet(Species, State),
can_support_species(Environment, Species).
% Main query to determine if a student could see a caracal on campus
query :-
possible_exotic_sighting(caracal, university_of_houston, texas).
% Uncomment the line below to run the query
 :- query.
%query.