% Define the rule to calculate the number of bags
calculate_number_of_bags(TotalWeight, BagWeight, NumberOfBags) :-
NumberOfBags is TotalWeight / BagWeight.
% Define the rule to calculate the total cost
calculate_total_cost(NumberOfBags, CostPerBag, TotalCost) :-
TotalCost is NumberOfBags * CostPerBag.
% Main predicate to compute the total cost of Ali's coal order
calculate_total_order_cost(TotalCost) :-
% Constants
TotalWeight = 850,  % Total weight of coal in kilos
BagWeight = 50,     % Weight of each bag in kilos
CostPerBag = 18,    % Cost per bag in dollars
% Calculate the number of bags
calculate_number_of_bags(TotalWeight, BagWeight, NumberOfBags),
% Calculate the total cost
calculate_total_cost(NumberOfBags, CostPerBag, TotalCost).
% Query predicate to get the total cost of Ali's coal order
query(TotalCost) :-
calculate_total_order_cost(TotalCost).
% Uncomment the following line to run the query
% query(TotalCost).
%query(TotalCost).