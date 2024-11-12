% Define the cost of the salad and yogurt
cost(salad, 6).
cost(yogurt, 3).
% Define the total cost predicate
total_cost(Total) :-
cost(salad, SaladCost),
cost(yogurt, YogurtCost),
Total is SaladCost + YogurtCost + 2 * CarrotCost.
% Define the cost per carrot predicate
cost_per_carrot(CarrotCost) :-
total_cost(11),  % Ellen pays a total of $11
CarrotCost is (11 - 9) / 2.  % Cost of two carrots is $2, divide by 2 to get cost of one carrot
% Query predicate to run the program and get the result
query(CarrotCost) :-
cost_per_carrot(CarrotCost).
% Uncomment the following line to run the query
% ?- query(CarrotCost).
%query(CarrotCost).