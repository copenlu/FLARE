% Define the cost per kilogram of oranges
cost_per_kilogram(3).
% Calculate the total cost of oranges needed to make a certain amount of juice
total_cost_of_oranges(Liters, TotalCost) :-
TotalKilograms is Liters * 5,  % Calculate total kilograms of oranges needed
cost_per_kilogram(CostPerKilogram),  % Get the cost per kilogram
TotalCost is TotalKilograms * CostPerKilogram.  % Calculate the total cost
% Query predicate to find the total cost of oranges needed for 4 liters of juice
query(TotalCost) :-
total_cost_of_oranges(4, TotalCost).
% Uncomment the line below to run the query
% ?- query(TotalCost).
%query(TotalCost).