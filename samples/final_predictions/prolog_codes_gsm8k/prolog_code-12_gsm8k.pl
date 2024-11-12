% Define the cost of each type of pastry
cost_donuts(Quantity, Cost) :- Cost is Quantity * 68.
cost_cupcakes(Quantity, Cost) :- Cost is Quantity * 80.
cost_cheesecakes(Quantity, Cost) :- Cost is Quantity * 55.
% Define the total cost of all pastries
total_cost(TotalCost) :-
cost_donuts(3, DonutsCost),  % 3 dozen donuts
cost_cupcakes(2, CupcakesCost),  % 2 dozen mini cupcakes
cost_cheesecakes(6, CheesecakesCost),  % 6 dozen mini cheesecakes
TotalCost is DonutsCost + CupcakesCost + CheesecakesCost.
% Query to find the total cost of all pastries
query(TotalCost) :-
total_cost(TotalCost).
% Uncomment the following line to run the query
% ?- query(TotalCost).
%query(TotalCost).