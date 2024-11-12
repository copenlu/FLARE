% Define the cost of grape gum
cost(grape, 2).
% Define the rule to calculate the cost of each pack of strawberry gum
cost_of_strawberry(Cost) :-
cost(grape, GrapeCost),
CostOfStrawberry is (7 - GrapeCost) / 3,
Cost is CostOfStrawberry.
% Query predicate to run the program and get the result
query(Cost) :-
cost_of_strawberry(Cost).
% Uncomment the following line to run the query
% ?- query(Cost).
%query(Cost).