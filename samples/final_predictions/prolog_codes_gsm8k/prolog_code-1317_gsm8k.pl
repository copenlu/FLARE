% Define the rule for calculating the remaining meals to distribute
remaining_meals(TotalMeals, FridayMeals, SaturdayMeals, SundayMeals, RemainingMeals) :-
TotalDistributed is FridayMeals + SaturdayMeals + SundayMeals,
RemainingMeals is TotalMeals - TotalDistributed.
% Define a predicate to execute the specific query with given values
query(RemainingMeals) :-
remaining_meals(1360, 64, 30, 48, RemainingMeals).
% Uncomment the line below to run the query
% ?- query(RemainingMeals).
%query(RemainingMeals).