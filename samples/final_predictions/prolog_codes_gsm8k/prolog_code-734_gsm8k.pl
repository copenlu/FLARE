% Define the calorie values per unit for each ingredient
calories_from_eggs(6, 75).  % 6 eggs * 75 calories/egg
calories_from_cheese(2, 120).  % 2 ounces of cheese * 120 calories/ounce
calories_from_ham(2, 40).  % 2 ounces of ham * 40 calories/ounce
% Calculate the total calories in the omelet
total_calories_omelet(TotalCalories) :-
calories_from_eggs(EggQuantity, EggCalories),
calories_from_cheese(CheeseQuantity, CheeseCalories),
calories_from_ham(HamQuantity, HamCalories),
TotalCalories is (EggQuantity * EggCalories) + (CheeseQuantity * CheeseCalories) + (HamQuantity * HamCalories).
% Query predicate to find the total calories in John's omelet
query(TotalCalories) :-
total_calories_omelet(TotalCalories).
% Uncomment the line below to run the query
% query(TotalCalories).
%query(TotalCalories).