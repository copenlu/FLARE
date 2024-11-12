% Define the yield per plant for tomatoes and eggplants
yield_per_plant(tomato, 22).
yield_per_plant(eggplant, 4).
% Calculate the total number of fruits for a specific plant type
total_fruits(Type, NumPlants, TotalFruits) :-
yield_per_plant(Type, Yield),
TotalFruits is NumPlants * Yield.
% Calculate the total number of fruits from all plants
total_fruits_all(TotalFruits) :-
total_fruits(tomato, 5, TotalTomatoes),
total_fruits(eggplant, 8, TotalEggplants),
TotalFruits is TotalTomatoes + TotalEggplants.
% Query to calculate the total number of fruits Ricardo can get from his plants
query(TotalFruits) :-
total_fruits_all(TotalFruits).
% Uncomment the following line to run the query and calculate the total number of fruits
% ?- query(TotalFruits).
%query(TotalFruits).