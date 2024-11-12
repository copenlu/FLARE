% Define constants
initial_cost(150000).
hangar_rental(5000).
fuel_cost(FuelCost) :- hangar_rental(HangarCost), FuelCost is 2 * HangarCost.
% Calculate total monthly cost
total_monthly_cost(TotalMonthlyCost) :-
hangar_rental(HangarCost),
fuel_cost(FuelCost),
TotalMonthlyCost is HangarCost + FuelCost.
% Calculate total annual cost
total_annual_cost(TotalAnnualCost) :-
total_monthly_cost(MonthlyCost),
TotalAnnualCost is MonthlyCost * 12.
% Calculate total cost for the first year
total_cost_first_year(TotalCost) :-
initial_cost(InitialCost),
total_annual_cost(AnnualCost),
TotalCost is InitialCost + AnnualCost.
% Query to calculate the total cost for James to acquire and maintain the plane for the first year
query(TotalCost) :-
total_cost_first_year(TotalCost).
% Uncomment the following line to run the query and calculate the total cost for the first year
% ?- query(TotalCost).
%query(TotalCost).