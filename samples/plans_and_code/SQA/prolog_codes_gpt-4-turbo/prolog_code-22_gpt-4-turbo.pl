% Define the properties of the Black Sea
black_sea_depth(2200). % in meters, assumed value
black_sea_water_clarity(low). % assumed low clarity due to high particulate matter
black_sea_anoxic_layer_depth(150). % depth at which anoxic layer starts in meters, assumed value
% Define light penetration properties
light_penetration_factor(clarity(low), 100). % light penetration depth in meters for low clarity
light_penetration_factor(clarity(medium), 200). % assumed value
light_penetration_factor(clarity(high), 300). % assumed value
% Check if sunlight reaches a certain depth
sunlight_reaches_depth(Depth) :-
black_sea_depth(SeaDepth),
black_sea_water_clarity(Clarity),
light_penetration_factor(clarity(Clarity), PenetrationDepth),
Depth =< PenetrationDepth,
Depth =< SeaDepth.
% Define the query to check if sunlight can reach the deepest part of the Black Sea
query :-
black_sea_depth(MaxDepth),
sunlight_reaches_depth(MaxDepth).
% Uncomment the line below to run the query
 :- query.
%query.