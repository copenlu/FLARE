% Define the number of babies dressed in purple and blue
number_of_babies(PurpleBabies, BlueBabies) :-
TotalBabies = 8,  % Total number of babies
PurpleBabies is round(TotalBabies * 3 / 4),
BlueBabies is round(TotalBabies * 1 / 4).
% Define the number of babies wearing bows
number_of_babies_with_bows(PurpleBabies, BlueBabies, PurpleBabiesWithBows, BlueBabiesWithBows) :-
PurpleBabiesWithBows is round(PurpleBabies * 1 / 3),
BlueBabiesWithBows is round(BlueBabies * 1).
% Define the percentage chance calculation
percentage_chance(PurpleBabiesWithBows, PurpleBabies, Percentage) :-
TotalPurpleBabiesWithBows is PurpleBabiesWithBows,
TotalPurpleBabies is PurpleBabies,
Percentage is (TotalPurpleBabiesWithBows / TotalPurpleBabies) * 100.
% Main predicate to compute the percentage chance
calculate_percentage_chance(Percentage) :-
number_of_babies(PurpleBabies, BlueBabies),
number_of_babies_with_bows(PurpleBabies, BlueBabies, PurpleBabiesWithBows, _),
percentage_chance(PurpleBabiesWithBows, PurpleBabies, Percentage).
% Query predicate to get the percentage chance
query(Percentage) :-
calculate_percentage_chance(Percentage).
% Uncomment the following line to run the query
% query(Percentage).
%query(Percentage).