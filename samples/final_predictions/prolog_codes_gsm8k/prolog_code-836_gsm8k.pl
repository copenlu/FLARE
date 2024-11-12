% Define costs of animals
animal_cost(goat, 500).
animal_cost(cow, 1500).
% Calculate total cost of a type of animal
total_animal_cost(Animal, Quantity, TotalCost) :-
animal_cost(Animal, CostPerAnimal),
TotalCost is CostPerAnimal * Quantity.
% Calculate the total amount spent by John
calculate_total_spent(TotalSpent) :-
total_animal_cost(goat, 3, TotalGoats),
total_animal_cost(cow, 2, TotalCows),
TotalSpent is TotalGoats + TotalCows.
% Query to calculate the total amount spent by John
query(TotalSpent) :-
calculate_total_spent(TotalSpent).
% Uncomment the following line to run the query and calculate the total amount spent by John
% ?- query(TotalSpent).
%query(TotalSpent).