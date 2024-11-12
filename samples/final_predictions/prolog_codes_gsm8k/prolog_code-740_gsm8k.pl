% Define the cost of potential car damage
car_damage_cost(450).
% Define the fine for unauthorized road maintenance
road_maintenance_fine(120).
% Define the cost of each bucket of asphalt
asphalt_bucket_cost(25).
% Calculate the total cost of fixing the pothole
total_fixing_cost(TotalCost) :-
car_damage_cost(CarDamageCost),
road_maintenance_fine(RoadMaintenanceFine),
asphalt_bucket_cost(AsphaltBucketCost),
TotalCost is RoadMaintenanceFine + (3 * AsphaltBucketCost).
% Calculate the amount of money Ron saves by fixing the pothole
money_saved(MoneySaved) :-
car_damage_cost(CarDamageCost),
total_fixing_cost(TotalFixingCost),
MoneySaved is CarDamageCost - TotalFixingCost.
% Query predicate to find the amount of money Ron saves
query(MoneySaved) :-
money_saved(MoneySaved).
% Uncomment the line below to run the query
% query(MoneySaved).
%query(MoneySaved).