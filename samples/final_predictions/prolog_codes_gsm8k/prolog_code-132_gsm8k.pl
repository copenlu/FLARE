% Define the cost of a pepper
cost_of_pepper(15). % Assumed atom/predicate
% Calculate the cost of a watermelon in terms of the cost of a pepper
cost_of_watermelon(Cost) :-
cost_of_pepper(PepperCost),
Cost is 3 * PepperCost.
% Calculate the cost of an orange in terms of the cost of a pepper
cost_of_orange(Cost) :-
cost_of_watermelon(WatermelonCost),
Cost is WatermelonCost - 5.
% Calculate the total cost based on the quantities of each item and their respective prices
total_cost(WatermelonCost, PepperCost, OrangeCost, TotalCost) :-
cost_of_watermelon(WatermelonCost),
cost_of_pepper(PepperCost),
cost_of_orange(OrangeCost),
TotalCost is (4 * WatermelonCost) + (20 * PepperCost) + (10 * OrangeCost).
% Query to calculate and return the total amount Dillon will spend
query(TotalCost) :-
total_cost(WatermelonCost, PepperCost, OrangeCost, TotalCost).
% Uncomment the following line to run the query and find out the total amount Dillon will spend
% query(TotalCost).
%query(TotalCost).