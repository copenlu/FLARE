% Define the rule to calculate the cost of each pump in cents
cost_per_pump(CostPerPump) :-
TotalPumps is 120 * 2,  % Total number of pumps used for 120 washings
TotalCost is 24.00,     % Total cost of the jumbo bottle of shampoo
CostPerPump is TotalCost / TotalPumps * 100.  % Cost of each pump in cents
% Query to find the cost of each pump in cents
query_cost_per_pump(CostPerPump) :-
cost_per_pump(CostPerPump).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_cost_per_pump(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).