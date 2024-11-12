% Define the number of rings for each instance
num_rings(1, 4). % First instance: 4 rings
num_rings(2, Rings) :- num_rings(1, FirstRings), Rings is 3 * FirstRings. % Second instance: 3 times the first
num_rings(3, Rings) :- num_rings(2, SecondRings), Rings is SecondRings / 2. % Third instance: half of the second
% Calculate the total number of rings across all instances
total_rings(Total) :-
num_rings(1, Rings1),
num_rings(2, Rings2),
num_rings(3, Rings3),
Total is Rings1 + Rings2 + Rings3.
% Query to calculate the total number of rings across all instances
query(Total) :-
total_rings(Total).
% Uncomment the following line to run the query and calculate the total number of rings
% ?- query(Total).
%query(Total).