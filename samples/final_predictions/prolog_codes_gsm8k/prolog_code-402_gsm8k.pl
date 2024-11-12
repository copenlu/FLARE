% Predicate to represent the cost of Tim's cable package per month
cable_cost(60).
% Predicate to calculate the total cost of streaming services per month
streaming_cost(NetflixCost, HuluCost, DisneyCost) :-
NetflixCost is 10,
HuluCost is 8, % 20% discount for bundling
DisneyCost is 8. % 20% discount for bundling
% Predicate to calculate the total savings by switching to streaming services
total_savings(CableCost, NetflixCost, HuluCost, DisneyCost, Savings) :-
cable_cost(CableCost),
streaming_cost(NetflixCost, HuluCost, DisneyCost),
Savings is CableCost - (NetflixCost + HuluCost + DisneyCost).
% Query predicate to find the total savings
query(Savings) :-
total_savings(60, 10, 8, 8, Savings).
% Uncomment the following line to run the query
% ?- query(Savings).
%query(Savings).