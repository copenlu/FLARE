% Define the cost per square foot for each component
cost_new_carpet_per_sqft(12).
cost_padding_per_sqft(2).
cost_removal_per_sqft(4).
cost_installation_per_sqft(34).
% Define the dimensions of the bedroom
bedroom_dimensions(18, 12).
% Define rules to calculate the cost of each component
calculate_cost(Component, Cost) :-
bedroom_dimensions(Length, Width),
Area is Length * Width,
(Component == new_carpet ->
cost_new_carpet_per_sqft(Price),
Cost is Area * Price;
Component == padding ->
cost_padding_per_sqft(Price),
Cost is Area * Price;
Component == removal ->
cost_removal_per_sqft(Price),
Cost is Area * Price;
Component == installation ->
cost_installation_per_sqft(Price),
Cost is Area * Price
).
% Define a rule to calculate the total cost
total_cost(TotalCost) :-
calculate_cost(new_carpet, NewCarpetCost),
calculate_cost(padding, PaddingCost),
calculate_cost(removal, RemovalCost),
calculate_cost(installation, InstallationCost),
TotalCost is NewCarpetCost + PaddingCost + RemovalCost + InstallationCost.
% Query to find the total cost of replacing the carpet
query(TotalCost) :-
total_cost(TotalCost).
% Uncomment the following line to run the query
% ?- query(TotalCost).
%query(TotalCost).