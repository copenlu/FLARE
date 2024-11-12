% Define the rule to calculate the number of blueberry cubes
blueberry_cubes(StrawberryCubes, BlueberryCubes) :-
BlueberryCubes is 5 * StrawberryCubes - 4.
% Define the rule to solve for the number of blueberry cubes
solve_blueberry_cubes(BlueberryCubes) :-
TotalIceCubes is 116,
between(1, TotalIceCubes, StrawberryCubes),  % Generate values for the number of strawberry cubes
blueberry_cubes(StrawberryCubes, BlueberryCubes),  % Calculate the number of blueberry cubes
StrawberryCubes + BlueberryCubes =:= TotalIceCubes.  % Ensure the total ice cubes add up correctly
% Query to find the number of blueberry cubes Mary makes
query(BlueberryCubes) :-
solve_blueberry_cubes(BlueberryCubes).
% Uncomment the following line to run the query
% ?- query(BlueberryCubes).
%query(BlueberryCubes).