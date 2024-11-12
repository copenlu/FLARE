% Define a predicate to calculate the total cost of May's hair cut and color
total_cost(InitialLength, FinalLength, ColorCost, HaircutCostPerInch, TotalCost) :-
% Calculate the length of the haircut
HaircutLength is InitialLength - FinalLength,
% Calculate the cost of the haircut
HaircutCost is HaircutLength * HaircutCostPerInch,
% Calculate the total cost of the cut and color
TotalCost is ColorCost + HaircutCost.
% Define a query predicate to find out the total cost of May's hair cut and color
query(TotalCost) :-
% Given values: initial length 10 inches, final length 8 inches, color cost $40, haircut cost $30 per inch
total_cost(10, 8, 40, 30, TotalCost).
% Uncomment the line below to run the query in SWI-Prolog
% query(TotalCost).
%query(TotalCost).