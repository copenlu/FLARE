% Predicate to calculate the total amount of flour needed for a given number of cakes
total_flour_needed(Cakes, FlourPerCake, TotalFlour) :-
TotalFlour is Cakes * FlourPerCake.
% Predicate to calculate the amount of flour Traci brought
flour_traci_brought(TotalFlour, HarrisFlour, TraciFlour) :-
TraciFlour is TotalFlour - HarrisFlour.
% Constants for the number of cakes, flour per cake, and flour Harris contributed
cakes(18). % Total cakes baked
flour_per_cake(100). % Flour needed per cake in grams
harris_flour(400). % Flour contributed by Harris in grams
% Query to calculate the amount of flour Traci brought
query(TraciFlour) :-
cakes(Cakes),
flour_per_cake(FlourPerCake),
total_flour_needed(Cakes, FlourPerCake, TotalFlour),
harris_flour(HarrisFlour),
flour_traci_brought(TotalFlour, HarrisFlour, TraciFlour).
% Uncomment the line below to run the query and find out how much flour Traci brought
% ?- query(TraciFlour).
%query(TraciFlour).