% Define the rule for calculating the total cost
total_cost(NumParents, NumChildren, TotalAmount) :-
TotalAdultCost is NumParents * 12,
TotalChildCost is NumChildren * 8,
TotalPopcornCost is 2 * 3,
TotalAmount is TotalAdultCost + TotalChildCost + TotalPopcornCost.
% Define a predicate to execute the specific query with given values
query(TotalAmount) :-
total_cost(2, 1, TotalAmount). % Assumed values: 2 parents, 1 child
% Uncomment the line below to run the query
% ?- query(TotalAmount).
%query(TotalAmount).