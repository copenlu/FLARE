% Define the rule to calculate the volume of the pool
volume_pool(Length, Width, Depth, Volume) :- Volume is Length * Width * Depth.
% Define the rule to calculate the cost of filling the pool
cost_to_fill(Volume, CostPerCubicFoot, TotalCost) :- TotalCost is Volume * CostPerCubicFoot.
% Define the query predicate to calculate the total cost of filling the pool
query(TotalCost) :-
volume_pool(6, 4, 5, Volume),  % Pool dimensions: 6ft x 4ft x 5ft
cost_to_fill(Volume, 0.1, TotalCost).  % Cost per cubic foot: $0.1
% Uncomment the line below to run the query
% ?- query(TotalCost).
%query(TotalCost).