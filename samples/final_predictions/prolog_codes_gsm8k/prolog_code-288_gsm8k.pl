% Predicate to calculate the total number of spots on all the cobras
% Params: NumCobras, SpotsPerCobra, TotalSpotsCobras
total_spots_cobras(NumCobras, SpotsPerCobra, TotalSpotsCobras) :-
TotalSpotsCobras is NumCobras * SpotsPerCobra.
% Predicate to calculate the total number of spots on all the mambas
% Params: NumMambas, SpotsPerMamba, TotalSpotsMambas
total_spots_mambas(NumMambas, SpotsPerMamba, TotalSpotsMambas) :-
TotalSpotsMambas is NumMambas * (SpotsPerMamba / 2).
% Predicate to calculate half of the total number of spots
% Params: TotalSpotsCobras, TotalSpotsMambas, HalfTotalSpots
half_total_spots(TotalSpotsCobras, TotalSpotsMambas, HalfTotalSpots) :-
HalfTotalSpots is (TotalSpotsCobras + TotalSpotsMambas) / 2.
% Main predicate to compute half the number of spots on all cobras and mambas combined
% Params: HalfSpots
calculate_half_spots(HalfSpots) :-
% Constants
SpotsPerCobra = 70,
NumCobras = 40,
NumMambas = 60,
% Calculate the number of spots on a mamba
SpotsPerMamba is SpotsPerCobra / 2,
% Calculate total spots on all cobras and mambas
total_spots_cobras(NumCobras, SpotsPerCobra, TotalSpotsCobras),
total_spots_mambas(NumMambas, SpotsPerMamba, TotalSpotsMambas),
% Calculate half of the total spots
half_total_spots(TotalSpotsCobras, TotalSpotsMambas, HalfSpots).
% Query predicate to get half the number of spots on all cobras and mambas combined
query(HalfSpots) :-
calculate_half_spots(HalfSpots).
% Uncomment the following line to run the query
% query(HalfSpots).
%query(HalfSpots).