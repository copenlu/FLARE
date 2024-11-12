% Define the total cost calculation rule
total_cost(PensCost, NotebooksCost, BondPaperCost, TotalCost) :-
PensCost is 4 * 1.5,        % Cost of 4 pens at $1.5 each
NotebooksCost is 2 * 4,     % Cost of 2 notebooks at $4 each
BondPaperCost is 20,        % Cost of 1 rim of bond paper at $20
TotalCost is PensCost + NotebooksCost + BondPaperCost.
% Query to find out how much Raphael spent on school supplies
query(TotalCost) :-
total_cost(_, _, _, TotalCost).
% Uncomment the following line to run the query and find out the total cost
% ?- query(TotalCost).
%query(TotalCost).