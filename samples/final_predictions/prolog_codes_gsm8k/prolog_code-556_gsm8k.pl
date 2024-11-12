% Define the quantities and prices of each type of fruit
apple(3, 1.50).
orange(5, 0.80).
peach(6, 0.75).
% Define a predicate to calculate the total cost of a specific type of fruit
total_cost_fruit(Type, TotalCost) :-
Type(Quantity, Price),
TotalCost is Quantity * Price.
% Define a predicate to calculate the total cost of all fruits
total_cost_all_fruits(TotalCost) :-
total_cost_fruit(apple, Cost1),
total_cost_fruit(orange, Cost2),
total_cost_fruit(peach, Cost3),
TotalCost is Cost1 + Cost2 + Cost3.
% Define a predicate to calculate the change received
change_received(Change) :-
total_cost_all_fruits(TotalCost),
Change is 20 - TotalCost.
% Query predicate to run the program and get the result
query(Change) :-
change_received(Change).
% Uncomment the following line to run the query
% ?- query(Change).
%query(Change).