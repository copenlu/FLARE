% Predicate to calculate the increased monthly cost after the accident
% Params: NormalMonthlyCost, IncreasedMonthlyCost
increased_monthly_cost(NormalMonthlyCost, IncreasedMonthlyCost) :-
IncreasedMonthlyCost is NormalMonthlyCost + (0.6 * NormalMonthlyCost).  % 60% increase
% Predicate to calculate the total monthly cost after the accident
% Params: NormalMonthlyCost, IncreasedMonthlyCost, TotalMonthlyCost
total_monthly_cost(NormalMonthlyCost, IncreasedMonthlyCost, TotalMonthlyCost) :-
TotalMonthlyCost is NormalMonthlyCost + IncreasedMonthlyCost.
% Predicate to calculate the annual cost of insurance
% Params: TotalMonthlyCost, AnnualCost
annual_cost(TotalMonthlyCost, AnnualCost) :-
AnnualCost is TotalMonthlyCost * 12.  % 12 months in a year
% Main predicate to compute the annual cost of insurance for James
% Params: AnnualCost
calculate_annual_cost(AnnualCost) :-
% Constants
NormalMonthlyCost = 120,  % Normal monthly cost in dollars
% Calculate increased monthly cost
increased_monthly_cost(NormalMonthlyCost, IncreasedMonthlyCost),
% Calculate total monthly cost
total_monthly_cost(NormalMonthlyCost, IncreasedMonthlyCost, TotalMonthlyCost),
% Calculate annual cost
annual_cost(TotalMonthlyCost, AnnualCost).
% Query predicate to get the annual cost of insurance for James
query(AnnualCost) :-
calculate_annual_cost(AnnualCost).
% Uncomment the following line to run the query
% query(AnnualCost).
%query(AnnualCost).