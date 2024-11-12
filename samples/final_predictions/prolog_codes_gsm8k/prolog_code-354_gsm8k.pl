% Define the predicate to calculate the total number of legs contributed by tables with a specific number of legs
legs_per_table(Legs, NumTables, TotalLegs) :-
TotalLegs is Legs * NumTables.
% Define the total_legs predicate to calculate the total number of legs in the restaurant
total_legs(TotalLegs) :-
legs_per_table(4, 40, TotalLegs4),  % Calculate total legs contributed by tables with 4 legs
legs_per_table(3, 50, TotalLegs3),  % Calculate total legs contributed by tables with 3 legs
TotalLegs is TotalLegs4 + TotalLegs3.  % Calculate the overall total number of legs
% Query predicate to run the program and get the result
query(TotalLegs) :-
total_legs(TotalLegs).
% Uncomment the following line to run the query
% ?- query(TotalLegs).
%query(TotalLegs).