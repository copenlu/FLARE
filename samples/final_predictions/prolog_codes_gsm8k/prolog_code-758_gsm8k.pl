% Define the cost of a half-gallon jar
cost_half_gallon(Cost) :-
Cost is 5 - 2. % A gallon jar costs $2 more than a half-gallon jar
% Define the total cost of 10-gallon jars and 16 half-gallon jars
total_cost(TotalCost, GallonJars, HalfGallonJars) :-
cost_half_gallon(HalfGallonCost),
GallonCost is 5,
TotalCost is (GallonCost * GallonJars) + (HalfGallonCost * HalfGallonJars.
% Query to find the total amount spent on 10-gallon jars and 16 half-gallon jars
query_total_cost(TotalCost) :-
total_cost(TotalCost, 10, 16).
% Uncomment the line below to run the query
% query_total_cost(TotalCost).
% query_total_cost(TotalCost).