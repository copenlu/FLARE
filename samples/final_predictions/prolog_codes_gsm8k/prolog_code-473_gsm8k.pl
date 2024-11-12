% Define the number of plants Frederick has
plants(frederick, 10).
% Define the relationship between the number of plants Toni has compared to Frederick
plants(toni, PlantsToni) :-
plants(frederick, FrederickPlants),
PlantsToni is FrederickPlants + (0.60 * FrederickPlants).
% Define the relationship between the number of plants Shondra has compared to Toni
plants(shondra, PlantsShondra) :-
plants(toni, ToniPlants),
PlantsShondra is ToniPlants - 7.
% Query to find out how many plants Shondra has
query(ShondraPlants) :-
plants(shondra, ShondraPlants).
% Uncomment the following line to run the query and calculate the number of plants Shondra has
% ?- query(ShondraPlants).
%query(ShondraPlants).