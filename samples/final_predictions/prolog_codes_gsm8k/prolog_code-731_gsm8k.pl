% Define the number of mosaic tiles needed per square foot
tiles_per_sq_ft(24).  % Assumed number of mosaic tiles needed per square foot
% Calculate the total number of mosaic tiles needed for a given area
mosaic_tiles_needed(Area, TilesPerSqFt, TotalTiles) :-
TotalTiles is Area * TilesPerSqFt.
% Calculate the number of mosaic tiles needed to cover two-thirds of the bathroom
tiles_for_two_thirds_bathroom(Area, TilesForTwoThirds) :-
tiles_per_sq_ft(TilesPerSqFt),
AreaToCover is (2/3) * Area,
mosaic_tiles_needed(AreaToCover, TilesPerSqFt, TilesForTwoThirds).
% Query predicate to find the number of mosaic tiles needed for two-thirds of the bathroom
query(TilesForTwoThirds) :-
tiles_for_two_thirds_bathroom(36, TilesForTwoThirds).  % Assuming the bathroom area is 36 sq ft
% Uncomment the line below to run the query
% query(TilesForTwoThirds).
%query(TilesForTwoThirds).