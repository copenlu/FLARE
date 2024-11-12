% Define soil requirements for each type of flower
soil_required(rose, 1).
soil_required(carnation, 1.5).
soil_required(sunflower, 3).
% Calculate total soil used by planted sunflowers and carnations
total_soil_used(TotalUsed) :-
SunflowerUsed is 4 * soil_required(sunflower),
CarnationUsed is 10 * soil_required(carnation),
TotalUsed is SunflowerUsed + CarnationUsed.
% Calculate the number of roses that can be planted with remaining soil
roses_plantable(Roses) :-
TotalSoil = 30,
total_soil_used(TotalUsed),
RemainingSoil is TotalSoil - TotalUsed,
SoilPerRose = soil_required(rose),
Roses is floor(RemainingSoil / SoilPerRose).
% Query predicate to find the number of roses that can be planted
query(Roses) :-
roses_plantable(Roses).
% Uncomment the line below to run the query
% query(Roses).
%query(Roses).