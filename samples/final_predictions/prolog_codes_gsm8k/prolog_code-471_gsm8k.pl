% Define the weight and quantity of each feed item
feed_weight(sugar_cubes, 2).
feed_weight(carrots, 48).
feed_weight(hay, 3150).
feed_weight(oats, 1300).
% Calculate the total weight of all feed items
total_weight(TotalWeight) :-
feed_weight(sugar_cubes, SugarCubesWeight),
feed_weight(carrots, CarrotsWeight),
feed_weight(hay, HayWeight),
feed_weight(oats, OatsWeight),
TotalWeight is SugarCubesWeight + CarrotsWeight + HayWeight + OatsWeight.
% Calculate the number of trips needed based on truck capacity
calculate_trips(Trips) :-
total_weight(TotalWeight),
TruckCapacity = 2250,
Trips is ceil(TotalWeight / TruckCapacity).
% Query to calculate the number of trips needed to transport all feed items
query(Trips) :-
calculate_trips(Trips).
% Uncomment the following line to run the query and calculate the number of trips
% ?- query(Trips).
%query(Trips).