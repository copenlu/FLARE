% Define predicate to calculate the number of indoor plants
% Params: TotalPlants, IndoorPlants
indoor_plants(TotalPlants, IndoorPlants) :-
IndoorPlants is TotalPlants // 4.
% Define predicate to calculate the number of outdoor plants
% Params: TotalPlants, IndoorPlants, OutdoorPlants
outdoor_plants(TotalPlants, IndoorPlants, OutdoorPlants) :-
RemainingPlants is TotalPlants - IndoorPlants,
OutdoorPlants is (2 * RemainingPlants) // 3.
% Define predicate to calculate the number of flowering plants
% Params: TotalPlants, IndoorPlants, OutdoorPlants, FloweringPlants
flowering_plants(TotalPlants, IndoorPlants, OutdoorPlants, FloweringPlants) :-
FloweringPlants is TotalPlants - IndoorPlants - OutdoorPlants.
% Define predicate to calculate the percentage of flowering plants
% Params: TotalPlants, FloweringPlants, Percentage
flowering_plants_percentage(TotalPlants, FloweringPlants, Percentage) :-
Percentage is (FloweringPlants / TotalPlants) * 100.
% Query predicate to run the program and get the result
query(Percentage) :-
indoor_plants(100, Indoor),
outdoor_plants(100, Indoor, Outdoor),
flowering_plants(100, Indoor, Outdoor, Flowering),
flowering_plants_percentage(100, Flowering, Percentage).
% Uncomment the following line to run the query
% ?- query(Percentage).
%query(Percentage).