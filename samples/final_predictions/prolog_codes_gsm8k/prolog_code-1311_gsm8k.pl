% Define the rule for calculating the total cost of place settings
total_cost_place_settings(DinnerPlateCost, SaladPlateCost, BowlCost, NumPeople, TotalCost) :-
TotalCostOnePerson is DinnerPlateCost + SaladPlateCost + BowlCost,
TotalCost is TotalCostOnePerson * NumPeople.
% Define a predicate to execute the specific query with given values
query(TotalCost) :-
total_cost_place_settings(6, 4, 5, 12, TotalCost).
% Uncomment the line below to run the query
% ?- query(TotalCost).
%query(TotalCost).