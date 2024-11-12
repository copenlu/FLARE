% Define the initial fish counts in Tate's garden pond
initial_fish_counts(4, 7, 3, 5).  % (Male Guppies, Female Guppies, Male Goldfishes, Female Goldfishes)
% Define the additional fish purchases made by Tate
additional_purchases(2, 1, 2, 3).  % (Male Guppies, Female Guppies, Male Goldfishes, Female Goldfishes)
% Calculate the total number of male and female fishes after purchases
total_fish_counts(TotalMaleGuppies, TotalFemaleGuppies, TotalMaleGoldfishes, TotalFemaleGoldfishes) :-
initial_fish_counts(InitialMaleGuppies, InitialFemaleGuppies, InitialMaleGoldfishes, InitialFemaleGoldfishes),
additional_purchases(AdditionalMaleGuppies, AdditionalFemaleGuppies, AdditionalMaleGoldfishes, AdditionalFemaleGoldfishes),
TotalMaleGuppies is InitialMaleGuppies + AdditionalMaleGuppies,
TotalFemaleGuppies is InitialFemaleGuppies + AdditionalFemaleGuppies,
TotalMaleGoldfishes is InitialMaleGoldfishes + AdditionalMaleGoldfishes,
TotalFemaleGoldfishes is InitialFemaleGoldfishes + AdditionalFemaleGoldfishes.
% Calculate the difference between the total number of female and male fishes
calculate_difference(Difference) :-
total_fish_counts(_, TotalFemaleGuppies, _, TotalFemaleGoldfishes),
total_fish_counts(_, TotalMaleGuppies, _, TotalMaleGoldfishes),
Difference is TotalFemaleGuppies + TotalFemaleGoldfishes - TotalMaleGuppies - TotalMaleGoldfishes.
% Query predicate to run the program and get the result
query(Difference) :-
calculate_difference(Difference).
% Uncomment the following line to run the query
% ?- query(Difference).
%query(Difference).