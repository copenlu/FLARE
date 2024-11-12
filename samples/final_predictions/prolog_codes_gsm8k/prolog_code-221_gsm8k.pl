% Define the total cost of the shoes and belt
total_cost(ShoesCost, BeltCost, TotalCost) :-
TotalCost is ShoesCost + BeltCost.
% Define how many hours Lori needs to work to make the purchase
hours_to_work(TotalCost, HourlyRate, Hours) :-
Hours is TotalCost / HourlyRate.
% Calculate the total cost and hours needed to work
calculate_hours_to_work(Hours) :-
total_cost(320.00, 32.00, TotalCost),  % Costs are given in the problem
hours_to_work(TotalCost, 8.00, Hours).  % Hourly rate is given in the problem
% Query to find the number of hours Lori needs to work
query(Hours) :-
calculate_hours_to_work(Hours).
% Uncomment the following line to run the query
% ?- query(Hours).
%query(Hours).