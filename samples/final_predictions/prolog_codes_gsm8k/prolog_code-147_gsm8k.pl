% Define the total cost of all items
total_cost(Milk, Eggs, LightBulbs, Cups, RoachTraps, TotalCost) :-
TotalCost is Milk + Eggs + LightBulbs + Cups + RoachTraps.
% Define the tax calculation for nonfood items
calculate_tax(NonfoodItemsCost, Tax) :-
Tax is 0.1 * NonfoodItemsCost.
% Define the total cost including tax
total_cost_with_tax(TotalCost, Tax, TotalCostWithTax) :-
TotalCostWithTax is TotalCost + Tax.
% Calculate the total cost including tax for John's purchases
johns_total_cost(TotalCostWithTax) :-
MilkCost = 2,  % Assumed atom/predicate
EggsCost = 3,  % Assumed atom/predicate
LightBulbsCost = 3,  % Assumed atom/predicate
CupsCost = 3,  % Assumed atom/predicate
RoachTrapsCost = 4,  % Assumed atom/predicate
total_cost(MilkCost, EggsCost, LightBulbsCost, CupsCost, RoachTrapsCost, TotalCost),
NonfoodItemsCost is LightBulbsCost + CupsCost + RoachTrapsCost,
calculate_tax(NonfoodItemsCost, Tax),
total_cost_with_tax(TotalCost, Tax, TotalCostWithTax).
% Query to find the total cost including tax for John's purchases
query(TotalCostWithTax) :-
johns_total_cost(TotalCostWithTax).
% Uncomment the following line to run the query and find out the total cost including tax for John's purchases.
% ?- query(TotalCostWithTax).
%query(TotalCostWithTax).