% Define the total budget Peter has to spend
total_budget(70).
% Calculate the number of wooden action figures Peter can buy
wooden_action_figures(TotalBudget, WoodenFigures) :-
WoodenPrice = 5,  % Assumed price of wooden action figures
WoodenDays = 4,   % Assumed number of days Peter buys wooden action figures
WoodenFigures is TotalBudget // (WoodenPrice * WoodenDays).
% Calculate the number of plastic action figures Peter can buy
plastic_action_figures(TotalBudget, PlasticFigures) :-
WoodenPrice = 5,  % Assumed price of wooden action figures
PlasticPrice = 2,  % Assumed price of plastic action figures
WoodenDays = 4,   % Assumed number of days Peter buys wooden action figures
PlasticDays = 7 - WoodenDays,  % Remaining days for buying plastic action figures
RemainingBudget is TotalBudget - (WoodenPrice * WoodenDays),
PlasticFigures is RemainingBudget // (PlasticPrice * PlasticDays).
% Calculate the total number of action figures Peter will have
total_action_figures(TotalFigures) :-
total_budget(TotalBudget),
wooden_action_figures(TotalBudget, WoodenFigures),
plastic_action_figures(TotalBudget, PlasticFigures),
TotalFigures is WoodenFigures + PlasticFigures.
% Query predicate to find the total number of action figures Peter will have
query(TotalFigures) :-
total_action_figures(TotalFigures).
% Uncomment the line below to run the query
% ?- query(TotalFigures).
%query(TotalFigures).