% Define the total cost of the books
total_cost_of_books(CostDictionary, CostDinosaurBook, CostCookbook, TotalCost) :-
TotalCost is CostDictionary + CostDinosaurBook + CostCookbook.
% Define the number of hours Tyler needs to work
hours_to_work(TotalCost, SavedAmount, HourlyEarnings, Hours) :-
RemainingAmount is TotalCost - SavedAmount,
Hours is ceil(RemainingAmount / HourlyEarnings).
% Predicate to encapsulate the entire calculation and output the number of hours Tyler needs to work
calculate_hours_to_work(Hours) :-
total_cost_of_books(18, 13, 8, TotalCost),  % Costs are given in the problem
hours_to_work(TotalCost, 14, 5, Hours).     % Saved amount and hourly earnings are given
% Query to find the number of hours Tyler needs to work
query(Hours) :-
calculate_hours_to_work(Hours).
% Uncomment the following line to run the query
% ?- query(Hours).
%query(Hours).