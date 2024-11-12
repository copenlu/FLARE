% Predicate to calculate the total cost of purchasing a certain quantity of erasers
cost_erasers(Quantity, TotalCost) :-
TotalCost is Quantity * 2.
% Predicate to calculate the total cost of purchasing a certain quantity of pencils
cost_pencils(Quantity, TotalCost) :-
TotalCost is Quantity * 3.
% Predicate to calculate the total cost of purchasing a specified quantity of erasers and pencils
total_cost(EraserQuantity, PencilQuantity, TotalCost) :-
cost_erasers(EraserQuantity, EraserCost),
cost_pencils(PencilQuantity, PencilCost),
TotalCost is EraserCost + PencilCost.
% Query predicate to find the total cost of purchasing 6 erasers and 8 pencils
query(TotalCost) :-
total_cost(6, 8, TotalCost).
% Uncomment the following line to run the query
% ?- query(TotalCost).
%query(TotalCost).