% Define constants
total_cost(64).
cost_of_two_pizzas(30).
% Calculate the cost of each pizza
calculate_pizza_cost(Cost) :-
total_cost(Total),
cost_of_two_pizzas(KnownCost),
RemainingCost is Total - (2 * KnownCost),
Cost is RemainingCost / 2.
% Query to calculate the cost of each of the other two pizzas
query(Cost) :-
calculate_pizza_cost(Cost).
% Uncomment the following line to run the query and calculate the cost of each of the other two pizzas
% ?- query(Cost).
%query(Cost).