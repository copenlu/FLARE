% Define predicates to calculate the area of each wall
wall_area(north, Area) :- Area is 10 * 8.
wall_area(south, Area) :- Area is 10 * 8.
wall_area(east, Area) :- Area is 5 * 8.
wall_area(west, Area) :- Area is 5 * 8.
% Define a predicate to calculate the total area to be painted
total_area_to_paint(TotalArea) :-
wall_area(north, Area1),
wall_area(south, Area2),
wall_area(east, Area3),
wall_area(west, Area4),
TotalArea is Area1 + Area2 + Area3 + Area4.
% Define a predicate to calculate the total number of gallons needed
gallons_needed(TotalGallons) :-
total_area_to_paint(TotalArea),
TotalGallons is TotalArea / 20.
% Define a predicate to calculate the total cost of painting the room
total_cost(Cost) :-
gallons_needed(TotalGallons),
Cost is TotalGallons * 12.
% Query to find the total cost of painting the room
query(Cost) :-
total_cost(Cost).
% Uncomment the following line to run the query
% ?- query(Cost).
%query(Cost).