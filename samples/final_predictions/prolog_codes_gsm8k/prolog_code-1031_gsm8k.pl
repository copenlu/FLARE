% Define the cost per gallon
cost_per_gallon(0.10).
% Calculate the volume of the pool
pool_volume(Width, Length, Depth, Volume) :-
Volume is Width * Length * Depth.
% Calculate the total gallons of water needed
total_gallons_needed(Volume, GallonsNeeded) :-
GallonsNeeded is Volume * 5.9.
% Calculate the total cost to fill the pool
total_cost(GallonsNeeded, Cost) :-
cost_per_gallon(CostPerGallon),
Cost is GallonsNeeded * CostPerGallon.
% Given pool dimensions
width(14).
length(25).
depth(4).
% Calculate and display the total cost to fill the pool
calculate_cost :-
width(Width),
length(Length),
depth(Depth),
pool_volume(Width, Length, Depth, Volume),
total_gallons_needed(Volume, GallonsNeeded),
total_cost(GallonsNeeded, Cost),
format('The total cost to fill the pool is $~2f.', [Cost]).
% Query predicate to find the total cost to fill the pool
query(Cost) :-
calculate_cost,
total_cost(_, Cost).
% Uncomment the line below to run the query
% query(Cost).
%query(Cost).