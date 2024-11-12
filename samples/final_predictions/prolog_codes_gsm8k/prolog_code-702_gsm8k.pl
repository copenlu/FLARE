% Define prices per kilo for each fruit
price_per_kilo(apples, 4).
price_per_kilo(bananas, 2).
price_per_kilo(oranges, 3).
% Calculate total cost for each type of fruit
total_cost(Fruit, Quantity, TotalCost) :-
price_per_kilo(Fruit, Price),
TotalCost is Price * Quantity.
% Calculate the total amount paid by Catherine
calculate_total_cost(TotalCost) :-
total_cost(apples, 1, TotalApples),
total_cost(bananas, 2, TotalBananas),
total_cost(oranges, 2, TotalOranges),
TotalCost is TotalApples + TotalBananas + TotalOranges.
% Query to calculate the total amount Catherine pays
query(TotalCost) :-
calculate_total_cost(TotalCost).
% Uncomment the following line to run the query and calculate the total amount paid by Catherine
% ?- query(TotalCost).
%query(TotalCost).