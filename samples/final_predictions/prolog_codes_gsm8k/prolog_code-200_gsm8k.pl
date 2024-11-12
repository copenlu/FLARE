% Define the cost of a pen as the sum of the costs of a pencil and an eraser
total_cost_of_pen(PencilCost, EraserCost, PenCost) :-
PenCost is PencilCost + EraserCost.
% Define the total cost of 8 pens as 8 times the cost of a pen
total_cost_of_8_pens(PencilCost, EraserCost, TotalCost) :-
total_cost_of_pen(PencilCost, EraserCost, PenCost),
TotalCost is PenCost * 8.
% Define a query predicate to find out the total cost of 8 pens
query(TotalCost) :-
% Given prices: pencil costs $1.20 and eraser costs $0.30
total_cost_of_8_pens(1.20, 0.30, TotalCost).
% Uncomment the line below to run the query in SWI-Prolog
% query(TotalCost).
%query(TotalCost).