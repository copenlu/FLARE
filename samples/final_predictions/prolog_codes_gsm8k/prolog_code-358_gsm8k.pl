% Define the cost of food per month
food_cost(25, MonthlyFoodCost) :-
MonthlyFoodCost is 25 * 4.  % 4 weeks in a month
% Define the cost of treats per month
treats_cost(20, MonthlyTreatsCost) :-
MonthlyTreatsCost is 20.
% Define the cost of medicine per month
medicine_cost(100, MonthlyMedicineCost) :-
MonthlyMedicineCost is 100.
% Calculate the total monthly cost
total_monthly_cost(TotalCost) :-
food_cost(25, FoodCost),
treats_cost(20, TreatsCost),
medicine_cost(100, MedicineCost),
TotalCost is FoodCost + TreatsCost + MedicineCost.
% Calculate the annual cost
annual_cost(AnnualCost) :-
total_monthly_cost(TotalMonthlyCost),
AnnualCost is TotalMonthlyCost * 12.  % 12 months in a year
% Query predicate to run the program and get the result
query(AnnualCost) :-
annual_cost(AnnualCost).
% Uncomment the following line to run the query
% ?- query(AnnualCost).
%query(AnnualCost).