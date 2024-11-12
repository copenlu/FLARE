% Define the daily cost of food per fish
daily_food_cost_per_fish(1).
% Calculate the total cost of food for all fish per day
total_food_cost_all_fish(DailyCostPerFish, TotalCost) :-
TotalCost is DailyCostPerFish * 3.
% Calculate the total cost of food for the month of May
total_food_cost_monthly(DailyCostPerFish, DaysInMonth, TotalCost) :-
total_food_cost_all_fish(DailyCostPerFish, DailyTotal),
TotalCost is DailyTotal * DaysInMonth.
% Main predicate to compute the total cost of food for the month of May
calculate_total_food_cost(TotalCost) :-
% Constants
DailyCostPerFish = 1,  % Assumed atom for daily cost per fish
DaysInMonth = 31,      % Assumed atom for number of days in May
% Calculate total cost for the month of May
total_food_cost_monthly(DailyCostPerFish, DaysInMonth, TotalCost).
% Query predicate to get the total cost of food for the month of May
query(TotalCost) :-
calculate_total_food_cost(TotalCost).
% Uncomment the following line to run the query
% query(TotalCost).
%query(TotalCost).