% Define the initial number of toys and dogs
initial_toys(4).
initial_dogs(4).
% Calculate the total number of toys needed
calculate_toys_needed(ToysNeeded) :-
initial_toys(InitialToys),
initial_dogs(InitialDogs),
AdditionalDogs = 8,
TwiceAsManyDogs is InitialDogs + AdditionalDogs,
DogsThatLeft = 3,
CurrentDogs is TwiceAsManyDogs - DogsThatLeft,
ToysNeeded is CurrentDogs.
% Query to get the total toys needed
query(ToysNeeded) :-
calculate_toys_needed(ToysNeeded).
% Uncomment the following line to run the query and calculate the total toys needed
% ?- query(ToysNeeded).
%query(ToysNeeded).