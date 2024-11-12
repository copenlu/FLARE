% Define rules for fruit production based on the age of the avocado tree
% Params: Age, FruitsProduced
fruits_produced(5, 50).  % 5-year-old tree produces 50 fruits
fruits_produced(6, InitialFruits) :- fruits_produced(5, Fruits5), InitialFruits is 3 * Fruits5.  % 6-year-old tree produces 3 times the initial amount
fruits_produced(7, InitialFruits) :- fruits_produced(5, Fruits5), InitialFruits is 7 * Fruits5.  % 7-year-old tree produces 7 times the initial amount
fruits_produced(8, InitialFruits) :- fruits_produced(10, Fruits10), InitialFruits is Fruits10 - 200.  % 8-year-old tree produces 200 fruits less than a 10-year-old tree
fruits_produced(9, 0).  % 9-year-old tree produces no fruits
fruits_produced(10, InitialFruits) :- fruits_produced(5, Fruits5), InitialFruits is 20 * Fruits5.  % 10-year-old tree produces 20 times the initial amount
% Predicate to calculate the total fruits produced by the avocado tree over 10 years
% Params: TotalFruits
calculate_total_fruits(TotalFruits) :-
findall(Fruits, fruits_produced(_, Fruits), FruitsList),  % Get the list of fruits produced each year
sum_list(FruitsList, TotalFruits).  % Sum the total fruits produced over 10 years
% Query predicate to get the total fruits produced by the avocado tree over 10 years
query(TotalFruits) :-
calculate_total_fruits(TotalFruits).
% Uncomment the following line to run the query
% query(TotalFruits).
%query(TotalFruits).