% Define a predicate to calculate the slices of cheese used in sandwiches
slices_in_sandwiches(NumSandwiches, SlicesInSandwiches) :-
SlicesInSandwiches is NumSandwiches * 2.
% Define a predicate to calculate the slices of cheese used in omelets
slices_in_omelets(NumOmelets, SlicesInOmelets, SlicesInSandwiches) :-
SlicesInOmelets is NumOmelets * (SlicesInSandwiches + 1).
% Define a predicate to calculate the slices of cheese used in macaroni and cheese dish
slices_in_macaroni_and_cheese(SlicesInMacNCheese) :-
SlicesInMacNCheese is 8.
% Define a predicate to calculate the total slices of cheese used
total_slices_used(TotalSlices) :-
slices_in_sandwiches(7, Sandwiches),  % Assumed atom/predicate: 7 sandwiches eaten in a week
slices_in_omelets(3, Omelets, Sandwiches),  % Assumed atom/predicate: 3 omelets eaten in a week
slices_in_macaroni_and_cheese(MacNCheese),  % Assumed atom/predicate: 8 slices used in macaroni and cheese
TotalSlices is Sandwiches + Omelets + MacNCheese.
% Define a query predicate to find out the total slices of cheese used
query(TotalSlices) :-
total_slices_used(TotalSlices).
% Uncomment the line below to run the query in SWI-Prolog
% ?- query(TotalSlices).
%query(TotalSlices).