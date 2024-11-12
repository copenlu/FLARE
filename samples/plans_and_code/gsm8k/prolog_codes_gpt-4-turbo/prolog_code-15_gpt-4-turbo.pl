% Predicate to calculate transportation cost
% Params: MilesPerDay, CostPerMile, WorkDaysPerMonth, TotalTransportationCost
transportation_cost(MilesPerDay, CostPerMile, WorkDaysPerMonth, TotalTransportationCost) :-
TotalTransportationCost is MilesPerDay * CostPerMile * WorkDaysPerMonth.
% Predicate to calculate the total monthly cost
% Params: Rent, Utilities, TransportationCost, TotalMonthlyCost
total_monthly_cost(Rent, Utilities, TransportationCost, TotalMonthlyCost) :-
TotalMonthlyCost is Rent + Utilities + TransportationCost.
% Predicate to calculate the difference between the total costs of two apartments
% Params: TotalCost1, TotalCost2, CostDifference
cost_difference(TotalCost1, TotalCost2, CostDifference) :-
CostDifference is abs(TotalCost1 - TotalCost2).
% Main predicate to compute the difference in total monthly costs between two apartments
% Params: Difference
calculate_cost_difference(Difference) :-
% Constants
Rent1 = 800,
Utilities1 = 260,
MilesPerDay1 = 31,
Rent2 = 900,
Utilities2 = 200,
MilesPerDay2 = 21,
CostPerMile = 0.58,  % Cost per mile in dollars
WorkDaysPerMonth = 20,
% Calculate transportation costs
transportation_cost(MilesPerDay1, CostPerMile, WorkDaysPerMonth, TransportationCost1),
transportation_cost(MilesPerDay2, CostPerMile, WorkDaysPerMonth, TransportationCost2),
% Calculate total monthly costs
total_monthly_cost(Rent1, Utilities1, TransportationCost1, TotalMonthlyCost1),
total_monthly_cost(Rent2, Utilities2, TransportationCost2, TotalMonthlyCost2),
% Calculate the difference in total costs
cost_difference(TotalMonthlyCost1, TotalMonthlyCost2, Difference).
% Query predicate to get the difference in total costs
query(Difference) :-
calculate_cost_difference(Difference).
% Uncomment the following line to run the query
% query(Difference).
%query(Difference).