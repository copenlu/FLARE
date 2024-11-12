% Define the amount of each ingredient per muffin
ingredient_amount(flour, 5).
ingredient_amount(sugar, 3).
ingredient_amount(salt, 0.25).
% Calculate total amount of each ingredient for 16 muffins
total_ingredients_needed(NumMuffins, TotalFlour, TotalSugar, TotalSalt) :-
ingredient_amount(flour, FlourPerMuffin),
ingredient_amount(sugar, SugarPerMuffin),
ingredient_amount(salt, SaltPerMuffin),
TotalFlour is FlourPerMuffin * NumMuffins,
TotalSugar is SugarPerMuffin * NumMuffins,
TotalSalt is SaltPerMuffin * NumMuffins.
% Calculate total dry ingredients needed for 16 muffins
total_dry_ingredients(NumMuffins, TotalDryIngredients) :-
total_ingredients_needed(NumMuffins, TotalFlour, TotalSugar, TotalSalt),
TotalDryIngredients is TotalFlour + TotalSugar + TotalSalt.
% Query to calculate the total dry ingredients needed for 16 muffins
query(TotalDryIngredients) :-
total_dry_ingredients(16, TotalDryIngredients).
% Uncomment the following line to run the query and calculate the total dry ingredients needed
% ?- query(TotalDryIngredients).
%query(TotalDryIngredients).