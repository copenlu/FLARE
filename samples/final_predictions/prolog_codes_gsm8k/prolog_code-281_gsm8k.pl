% Define the rule for calculating the total cost of seeds
total_seed_cost(TomatoPackets, TomatoCost, CeleryPackets, CeleryCost, TotalCost) :-
TotalTomatoCost is TomatoPackets * TomatoCost,
TotalCeleryCost is CeleryPackets * CeleryCost,
TotalCost is TotalTomatoCost + TotalCeleryCost.
% Define the values for the number of tomato and celery seed packets and their costs
TomatoPackets = 20,  % Assumed atom
TomatoCost = 40,     % Assumed atom
CeleryPackets = 80,  % Assumed atom
CeleryCost = 30.     % Assumed atom
% Main predicate to calculate the total cost of seeds
calculate_total_seed_cost(TotalCost) :-
total_seed_cost(TomatoPackets, TomatoCost, CeleryPackets, CeleryCost, TotalCost).
% Query predicate to get the total cost of seeds
query(TotalCost) :-
calculate_total_seed_cost(TotalCost).
% Uncomment the following line to run the query
% query(TotalCost).
%query(TotalCost).