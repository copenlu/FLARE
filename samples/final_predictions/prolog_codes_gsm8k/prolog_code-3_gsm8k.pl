% Define the increase in value after repairs
increase_in_value(RepairCost, Increase) :-
Increase is 1.5 * RepairCost.
% Define the final value of the house after repairs
final_house_value(PurchasePrice, RepairCost, FinalValue) :-
increase_in_value(RepairCost, Increase),
FinalValue is PurchasePrice + RepairCost + Increase.
% Define the profit made from flipping the house
calculate_profit(PurchasePrice, RepairCost, Profit) :-
final_house_value(PurchasePrice, RepairCost, FinalValue),
Profit is FinalValue - (PurchasePrice + RepairCost).
% Predicate to encapsulate the entire calculation and output the profit made by Josh
calculate_josh_profit(Profit) :-
calculate_profit(80000, 50000, Profit).  % Given values from the problem
% Query to find the profit made by Josh from flipping the house
query(Profit) :-
calculate_josh_profit(Profit).
% Uncomment the following line to run the query
% ?- query(Profit).
%query(Profit).