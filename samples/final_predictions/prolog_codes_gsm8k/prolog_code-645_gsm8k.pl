% Define the rule to calculate the total cost
total_cost(CostPerCar, NumCars, CompanyPercentage, TotalCost) :-
TotalCost is CostPerCar * NumCars * CompanyPercentage.
% Define the rule to calculate the total revenue
total_revenue(SellingPricePerCar, NumCars, TotalRevenue) :-
TotalRevenue is SellingPricePerCar * NumCars.
% Define the rule to calculate the total profit
total_profit(TotalCost, TotalRevenue, TotalProfit) :-
TotalProfit is TotalRevenue - TotalCost.
% Define the rule to calculate James's commission
james_commission(TotalProfit, CommissionPercentage, JamesCommission) :-
JamesCommission is TotalProfit * CommissionPercentage.
% Define the rule to calculate the total amount James made
total_amount_made(JamesCommission, TotalProfit, TotalAmount) :-
TotalAmount is JamesCommission + TotalProfit.
% Query to find out how much James made
query(TotalAmount) :-
total_cost(25000, 10, 0.3, TotalCost),  % Cost per car, number of cars, company percentage assumed
total_revenue(25000, 10, TotalRevenue),  % Selling price per car assumed
total_profit(TotalCost, TotalRevenue, TotalProfit),
james_commission(TotalProfit, 0.1, JamesCommission),  % Commission percentage assumed
total_amount_made(JamesCommission, TotalProfit, TotalAmount).
% Uncomment the following line to run the query
% ?- query(TotalAmount).
%query(TotalAmount).