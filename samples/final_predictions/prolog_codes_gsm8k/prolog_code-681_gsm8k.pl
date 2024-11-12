% Define the parameters
sessions_per_week(4).
hours_per_session(2).
weeks_of_class(6).
time_to_learn_recipe(1.5).
% Calculate the total hours spent in the cooking class
total_hours(TotalHours) :-
sessions_per_week(Sessions),
hours_per_session(Hours),
weeks_of_class(Weeks),
TotalHours is Sessions * Hours * Weeks.
% Calculate the number of recipes learned
calculate_recipes(NumRecipes) :-
total_hours(TotalHours),
time_to_learn_recipe(TimePerRecipe),
RecipesPerHour is 1 / TimePerRecipe,
NumRecipes is TotalHours * RecipesPerHour.
% Query to calculate the total number of recipes John learns
query(NumRecipes) :-
calculate_recipes(NumRecipes).
% Uncomment the following line to run the query and calculate the total number of recipes learned
% ?- query(NumRecipes).
%query(NumRecipes).