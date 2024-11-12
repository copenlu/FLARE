% Define the cost of bleach and cloths
bleach_cost(2).
cloths_cost(5).
% Define the total expenses for bleach and cloths
total_expenses(NumClients, TotalBleachCost, TotalClothsCost) :-
bleach_cost(BleachCost),
cloths_cost(ClothsCost),
TotalBleachCost is NumClients * 2 * BleachCost,
TotalClothsCost is NumClients * ClothsCost.
% Define the total income
total_income(NumClients, TotalIncome) :-
TotalIncome is NumClients * 92.
% Calculate the weekly profit
calculate_profit(NumClients, Profit) :-
total_expenses(NumClients, TotalBleachCost, TotalClothsCost),
total_income(NumClients, TotalIncome),
Profit is TotalIncome - (TotalBleachCost + TotalClothsCost).
% Query to find Kim's weekly profit
query(Profit) :-
calculate_profit(3, Profit).  % Assuming 3 existing clients
% Uncomment the following line to run the query and find out Kim's weekly profit
% ?- query(Profit).
%query(Profit).