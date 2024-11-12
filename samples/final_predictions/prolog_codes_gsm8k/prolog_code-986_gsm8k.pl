% Define the rule for calculating total cost of travel
total_cost(SuppliesCost, TravelCost) :-
TravelCost is SuppliesCost + SuppliesCost * 0.5.
% Predicate to calculate the total cost of travel tickets
calculate_travel_cost(TravelCost) :-
total_cost(400, TravelCost).  % Supplies cost is $400
% Query to find the total cost of travel tickets
query(TravelCost) :-
calculate_travel_cost(TravelCost).
% Uncomment the following line to run the query
% ?- query(TravelCost).
%query(TravelCost).