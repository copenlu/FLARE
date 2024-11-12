% Define constants
daily_consumption(12).
additional_consumption(2).
cost_per_kwh(1.50).
% Calculate daily cost
daily_cost(DailyConsumption, CostPerKwh, DailyCost) :-
DailyCost is DailyConsumption * CostPerKwh.
% Calculate weekly cost
weekly_cost(DailyCost, WeeklyCost) :-
WeeklyCost is DailyCost * 7.
% Calculate the difference in weekly bills
calculate_difference(Difference) :-
daily_consumption(DailyConsumption),
additional_consumption(AdditionalConsumption),
cost_per_kwh(CostPerKwh),
daily_cost(DailyConsumption, CostPerKwh, DailyCostBefore),
daily_cost(DailyConsumption + AdditionalConsumption, CostPerKwh, DailyCostAfter),
weekly_cost(DailyCostBefore, WeeklyCostBefore),
weekly_cost(DailyCostAfter, WeeklyCostAfter),
Difference is WeeklyCostAfter - WeeklyCostBefore.
% Query predicate to run the program and get the result
query(Difference) :-
calculate_difference(Difference).
% Uncomment the following line to run the query
% ?- query(Difference).
%query(Difference).