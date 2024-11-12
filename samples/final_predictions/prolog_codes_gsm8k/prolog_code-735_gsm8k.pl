% Define the prices of a pencil and an eraser
price(pencil, 0.50).
price(eraser, 0.25).
% Calculate the total cost of pencils
total_cost_pencils(Quantity, TotalCost) :-
price(pencil, PencilPrice),
TotalCost is Quantity * PencilPrice.
% Calculate the total cost of erasers
total_cost_erasers(Quantity, TotalCost) :-
price(eraser, EraserPrice),
TotalCost is Quantity * EraserPrice.
% Calculate the total cost of all items
total_cost_all_items(PencilQuantity, EraserQuantity, TotalCost) :-
total_cost_pencils(PencilQuantity, PencilCost),
total_cost_erasers(EraserQuantity, EraserCost),
TotalCost is PencilCost + EraserCost.
% Calculate the change received
change_received(TotalPayment, TotalCost, Change) :-
Change is TotalPayment - TotalCost.
% Query predicate to find the amount of change received
query(Change) :-
total_cost_all_items(6, 8, TotalCost),
change_received(10, TotalCost, Change).
% Uncomment the line below to run the query
% query(Change).
%query(Change).