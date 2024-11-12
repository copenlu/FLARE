% Define the total cost of the car and phone
total_cost(10000, 800, TotalCost) :-
TotalCost is 10000 + 800.
% Define the total money Gabriel has from working and his brother
total_money(5000, 200, TotalMoney) :-
TotalMoney is 5000 + 200.
% Calculate the amount of money Gabriel still needs to purchase the car and phone
money_still_needed(TotalMoney, TotalCost, MoneyNeeded) :-
MoneyNeeded is TotalCost - TotalMoney.
% Main predicate to calculate the money Gabriel still needs
money_needed(GabrielMoneyNeeded) :-
total_cost(CarCost, PhoneCost, TotalCost),
total_money(WorkingMoney, BrotherMoney, TotalMoney),
money_still_needed(TotalMoney, TotalCost, GabrielMoneyNeeded).
% Query predicate to find the amount of money Gabriel still needs
query(GabrielMoneyNeeded) :-
money_needed(GabrielMoneyNeeded).
% Uncomment the line below to run the query
% query(GabrielMoneyNeeded).
%query(GabrielMoneyNeeded).