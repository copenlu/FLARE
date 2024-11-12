% Define a predicate to calculate the change Violetta will receive
calculate_change(NumCrayons, CostPerCrayon, AmountPrepared, Change) :-
% Calculate the total cost of purchasing the crayons
TotalCost is NumCrayons * CostPerCrayon,
% Calculate the change Violetta will receive
Change is AmountPrepared - TotalCost.
% Define a query predicate to find out the change Violetta will receive
query(Change) :-
% Violetta wants 5 crayons at $2 each with $20 prepared
calculate_change(5, 2, 20, Change).
% Uncomment the line below to run the query in SWI-Prolog
% query(Change).
%query(Change).