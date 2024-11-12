% Define the monthly cost of car washes
monthly_cost(CostPerWash, WashesPerMonth, MonthlyCost) :-
MonthlyCost is CostPerWash * WashesPerMonth.
% Define the total cost Tom pays in a year
total_cost_in_year(MonthlyCost, TotalCost) :-
TotalCost is MonthlyCost * 12.
% Predicate to encapsulate the entire calculation and output the total cost in a year
calculate_total_cost_in_year(TotalCost) :-
monthly_cost(15, 4, MonthlyCost),  % Cost per wash is $15 and Tom gets 4 washes per month
total_cost_in_year(MonthlyCost, TotalCost).
% Query to find the total cost Tom pays in a year
query(TotalCost) :-
calculate_total_cost_in_year(TotalCost).
% Uncomment the following line to run the query
% ?- query(TotalCost).
%query(TotalCost).