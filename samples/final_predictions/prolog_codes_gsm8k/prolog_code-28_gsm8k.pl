% Define the total cost of ice cream after a certain number of days
total_cost_of_ice_cream(Days, Cost) :-
ServingsPerCarton = 15, % Assumed atom/predicate
CostPerCarton = 4.00, % Assumed atom/predicate
TotalServings is Days * 1, % Cynthia eats one serving per day
TotalCartons is ceil(TotalServings / ServingsPerCarton),
Cost is TotalCartons * CostPerCarton.
% Query to find out how much Cynthia will spend after 60 days
query(Cost) :-
total_cost_of_ice_cream(60, Cost).
% Uncomment the following line to run the query
% ?- query(Cost).
%query(Cost).