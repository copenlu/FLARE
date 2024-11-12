% Define a predicate to calculate the remaining money after purchases
remaining_money(InitialBudget, ComputerCost, ScannerCost, CDBurnerCost, PrinterCost, FinalAmountLeft) :-
% Calculate the total cost of the computer and accessories
TotalCost is ComputerCost + ScannerCost + CDBurnerCost + PrinterCost,
% Calculate the final amount left after purchases
FinalAmountLeft is InitialBudget - TotalCost.
% Define a query predicate to find out the remaining money Elvira has for clothing
query(FinalAmountLeft) :-
% Initial budget of €1500, costs of computer and accessories
remaining_money(1500, 1090, 157, 74, 102, FinalAmountLeft).
% Uncomment the line below to run the query in SWI-Prolog
% query(FinalAmountLeft).
%query(FinalAmountLeft).