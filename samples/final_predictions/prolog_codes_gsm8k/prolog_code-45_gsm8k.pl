% Define the rule to calculate the maximum grams of chips that can be eaten
max_chips_grams(DailyCalorieTarget, ConsumedCalories, Grams) :-
CaloriesPerServing = 250,  % Assumed atom: calories per serving
ServingsPerBag = 5,        % Assumed atom: servings per bag
BagWeight = 300,           % Assumed atom: weight of the bag
TotalCaloriesInBag is CaloriesPerServing * ServingsPerBag,
RemainingCalories is DailyCalorieTarget - ConsumedCalories,
MaxServings is RemainingCalories / CaloriesPerServing,
Grams is MaxServings * BagWeight.
% Query to find the maximum grams of chips that can be eaten
query_max_chips_grams(Grams) :-
max_chips_grams(2000, 1800, Grams).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_max_chips_grams(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).