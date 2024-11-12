% Define cost of small pizza
small_pizza_cost(8).
% Calculate total amount spent by Sally
calculate_total_cost(TotalCost) :-
small_pizza_cost(SmallPizzaCost),  % Cost of small pizza
FamilyPizzaCost is 3 * SmallPizzaCost,  % Cost of family-size pizza is 3 times small pizza cost
TotalCost is SmallPizzaCost + FamilyPizzaCost.  % Total amount spent is sum of both pizza costs
% Query to calculate the total amount spent by Sally
query(TotalCost) :-
calculate_total_cost(TotalCost).
% Uncomment the following line to run the query and calculate the total amount spent
% ?- query(TotalCost).
%query(TotalCost).