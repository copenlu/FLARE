% Define the prices of soda and water
price(soda, 7, 21).  % 7 bottles of soda cost $21
price(water, 4, 8).  % 4 bottles of water cost $8
% Define a predicate to calculate the cost per bottle
cost_per_bottle(Item, Cost) :-
price(Item, Quantity, Total),
Cost is Total / Quantity.
% Define a predicate to calculate the total cost of buying a specific quantity of an item
total_cost(Item, Quantity, Total) :-
cost_per_bottle(Item, Cost),
Total is Cost * Quantity.
% Calculate the total cost of buying 3 bottles of soda and 2 bottles of water
total_cost(soda, 3, SodaCost),
total_cost(water, 2, WaterCost),
TotalCost is SodaCost + WaterCost.
% Query predicate to run the program and get the result
query(TotalCost) :-
total_cost(soda, 3, SodaCost),
total_cost(water, 2, WaterCost),
TotalCost is SodaCost + WaterCost.
% Uncomment the following line to run the query
% ?- query(TotalCost).
%query(TotalCost).