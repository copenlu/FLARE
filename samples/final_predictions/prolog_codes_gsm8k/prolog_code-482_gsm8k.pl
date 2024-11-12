% Define the cost of the pen
pen_cost(2).
% Calculate the cost of the piece of paper
paper_cost(PaperCost) :-
pen_cost(PenCost),
PaperCost is 3 * PenCost - 1.
% Calculate the total cost and change received
calculate_change(AmountGiven, Change) :-
pen_cost(PenCost),
paper_cost(PaperCost),
TotalCost is PenCost + PaperCost,
Change is AmountGiven - TotalCost.
% Query to calculate the change received by Theo
query(Change) :-
calculate_change(10, Change).
% Uncomment the following line to run the query and calculate the change received by Theo
% ?- query(Change).
%query(Change).