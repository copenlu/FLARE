% Define constants
space_per_plant(2.5). % in feet
cost_per_plant(6). % in dollars
% Calculate number of additional plants needed and total cost
calculate_cost(Length, ExistingPlants, TotalCost) :-
space_per_plant(Space),
cost_per_plant(Cost),
TotalSpace is Length - (ExistingPlants * Space),
AdditionalPlants is TotalSpace / Space,
TotalCost is AdditionalPlants * Cost.
% Query predicate to find the total cost Pat will spend at the store
query(TotalCost) :-
calculate_cost(111, 17, TotalCost).
% Uncomment the line below to run the query
% query(TotalCost).
%query(TotalCost).