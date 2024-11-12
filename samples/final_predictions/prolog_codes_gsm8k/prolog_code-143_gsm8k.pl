% Define a rule to calculate the number of pink gumballs based on the given relationship
calculate_pink_gumballs(BlueGumballs, PinkGumballs) :-
PinkGumballs is 4 * BlueGumballs + 22.
% Query to find the number of pink gumballs when there are 12 blue gumballs
query(PinkGumballs) :-
calculate_pink_gumballs(12, PinkGumballs).
% Uncomment the following line to run the query and find out the number of pink gumballs when there are 12 blue gumballs
% ?- query(PinkGumballs).
%query(PinkGumballs).