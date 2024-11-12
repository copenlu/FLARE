% Define the prices of each item
price(notebook, 1.50).
price(pen, 0.25).
price(calculator, 12).
price(geometry_set, 10).
% Define a predicate to calculate the total cost of an item based on quantity
total_cost(Item, Quantity, Total) :-
price(Item, Price),
Total is Price * Quantity.
% Define a predicate to calculate the subtotal before discount
subtotal(Subtotal) :-
total_cost(notebook, 5, Cost1),
total_cost(pen, 2, Cost2),
total_cost(calculator, 1, Cost3),
total_cost(geometry_set, 1, Cost4),
Subtotal is Cost1 + Cost2 + Cost3 + Cost4.
% Define a predicate to calculate the final amount after applying 10% discount
final_amount(Total) :-
subtotal(Subtotal),
Total is Subtotal * 0.9.
% Query predicate to run the program and get the result
query(Total) :-
final_amount(Total).
% Uncomment the following line to run the query
% ?- query(Total).
%query(Total).