% Predicate to calculate the number of tiles needed
% Params: TotalArea, TileArea, TotalTiles
calculate_total_tiles(TotalArea, TileArea, TotalTiles) :-
TotalTiles is TotalArea / TileArea.
% Predicate to calculate the total cost of renovation
% Params: TotalTiles, CostPerTile, TotalCost
calculate_total_cost(TotalTiles, CostPerTile, TotalCost) :-
TotalCost is TotalTiles * CostPerTile.
% Main predicate to compute the total cost of renovating the kitchen floor
% Params: TotalCost
calculate_total_renovation_cost(TotalCost) :-
% Constants
TotalArea = 200,  % Total area of the floor in SqFt
TileArea = 1,     % Area of each tile in SqFt
CostPerTile = 12, % Cost per tile in dollars
% Calculate the total number of tiles needed
calculate_total_tiles(TotalArea, TileArea, TotalTiles),
% Calculate the total cost of renovation
calculate_total_cost(TotalTiles, CostPerTile, TotalCost).
% Query predicate to get the total cost of renovation
query(TotalCost) :-
calculate_total_renovation_cost(TotalCost).
% Uncomment the following line to run the query
% query(TotalCost).
%query(TotalCost).