% Define the cost of the original brand and the more expensive brand
original_brand_cost(5).
more_expensive_brand_cost(OriginalCost, IncreasedCost) :-
IncreasedCost is OriginalCost + (OriginalCost * 0.20).
% Calculate the total cost of coffee for a week
total_coffee_cost_per_week(CostPerPound, PoundsPerDay, DaysPerWeek, TotalCost) :-
TotalCost is CostPerPound * PoundsPerDay * DaysPerWeek.
% Calculate the total cost of everything
total_cost(TotalCoffeeCost, DonutCost, TotalCost) :-
TotalCost is TotalCoffeeCost + DonutCost.
% Calculate the total cost of everything Roger purchased
calculate_total_cost(TotalCost) :-
original_brand_cost(OriginalCost),
more_expensive_brand_cost(OriginalCost, IncreasedCost),
total_coffee_cost_per_week(IncreasedCost, 1, 7, TotalCoffeeCost),
DonutCost is 2,
total_cost(TotalCoffeeCost, DonutCost, TotalCost).
% Query to calculate the total cost of everything Roger purchased
query(TotalCost) :-
calculate_total_cost(TotalCost).
% Uncomment the following line to run the query and calculate the total cost
% ?- query(TotalCost).
%query(TotalCost).