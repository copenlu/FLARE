% Define a predicate to calculate the total cost of Pauline's visits before the cost increase
total_cost_before_increase(TotalCostBefore) :-
VisitsPerYear = 3,
CostPerVisit = 2,
YearsBeforeIncrease = 5,
TotalCostBefore is VisitsPerYear * CostPerVisit * YearsBeforeIncrease.
% Define a predicate to calculate the new cost of one visit after the 150% increase
new_cost_after_increase(NewCost) :-
CostPerVisit = 2,
IncreasePercentage = 150,
NewCost is CostPerVisit + (CostPerVisit * IncreasePercentage / 100).
% Define a predicate to calculate the total cost of Pauline's visits after the cost increase for the remaining 3 years
total_cost_after_increase(TotalCostAfter) :-
VisitsPerYear = 3,
NewCostPerVisit = 3,  % Assumed atom/predicate
RemainingYears = 3,
TotalCostAfter is VisitsPerYear * NewCostPerVisit * RemainingYears.
% Define a predicate to calculate the total amount spent by Pauline on all her visits
total_amount_spent(TotalAmount) :-
total_cost_before_increase(TotalCostBefore),
new_cost_after_increase(NewCost),
total_cost_after_increase(TotalCostAfter),
TotalAmount is TotalCostBefore + TotalCostAfter.
% Define a query predicate to find out the total amount spent by Pauline
query(TotalAmount) :-
total_amount_spent(TotalAmount).
% Uncomment the line below to run the query in SWI-Prolog
% query(TotalAmount).
%query(TotalAmount).