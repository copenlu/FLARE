% Define the cost of each type of clothing item per week
cost_blouses(BlousesCost) :- BlousesCost is 5 * 5.00.  % Assumed atom: 5 blouses
cost_pants(PantsCost) :- PantsCost is 2 * 8.00.        % Assumed atom: 2 pairs of pants
cost_skirt(SkirtCost) :- SkirtCost is 1 * 6.00.        % Assumed atom: 1 skirt
% Define the total cost of dry-cleaning per week
total_cost_weekly(TotalCost) :-
cost_blouses(BlousesCost),
cost_pants(PantsCost),
cost_skirt(SkirtCost),
TotalCost is BlousesCost + PantsCost + SkirtCost.
% Define the total cost of dry-cleaning for 5 weeks
total_cost_5_weeks(TotalCost5Weeks) :-
total_cost_weekly(WeeklyCost),
TotalCost5Weeks is WeeklyCost * 5.
% Query to find out how much Alicia spends on dry-cleaning in 5 weeks
query(TotalCost5Weeks) :-
total_cost_5_weeks(TotalCost5Weeks).
% Uncomment the following line to run the query
% ?- query(TotalCost5Weeks).
%query(TotalCost5Weeks).