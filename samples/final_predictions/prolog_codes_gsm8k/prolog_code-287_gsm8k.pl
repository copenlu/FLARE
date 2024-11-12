% Define the rule for calculating total cost
total_cost(PopsicleQty, IceCreamQty, TotalCost) :-
PopsiclePrice = 0.25,  % Assumed atom/predicate
IceCreamPrice = 0.50,  % Assumed atom/predicate
TotalPopsicleCost is PopsicleQty * PopsiclePrice,
TotalIceCreamCost is IceCreamQty * IceCreamPrice,
TotalCost is TotalPopsicleCost + TotalIceCreamCost.
% Predicate to calculate the total cost Peter paid for popsicles and ice cream bars
% Params: TotalCost
calculate_total_cost(TotalCost) :-
total_cost(20, 4, TotalCost).  % Peter purchased 20 popsicles and 4 ice cream bars
% Query predicate to get the total cost Peter paid
query(TotalCost) :-
calculate_total_cost(TotalCost).
% Uncomment the following line to run the query
% query(TotalCost).
%query(TotalCost).