% Predicate to calculate the total number of loads of laundry in a year
% Params: NumTwinBeds, NumKingBeds, TwinCapacity, KingCapacity, TotalLoads
total_laundry_loads(NumTwinBeds, NumKingBeds, TwinCapacity, KingCapacity, TotalLoads) :-
% Calculate total number of twin sets and king sets needed each week
TotalTwinSets is NumTwinBeds * 2,
TotalKingSets is NumKingBeds,
% Calculate number of loads needed each week
TwinLoads is ceil(TotalTwinSets / TwinCapacity),
KingLoads is ceil(TotalKingSets / KingCapacity),
% Calculate total loads in a year
TotalLoads is (TwinLoads + KingLoads) * 52.
% Main predicate to compute the total number of loads of laundry Greg does in a year
% Params: TotalLoads
calculate_total_laundry_loads(TotalLoads) :-
% Constants
NumTwinBeds = 4,
NumKingBeds = 1,
TwinCapacity = 2,
KingCapacity = 1,
% Calculate total loads of laundry
total_laundry_loads(NumTwinBeds, NumKingBeds, TwinCapacity, KingCapacity, TotalLoads).
% Query predicate to get the total number of loads of laundry in a year
query(TotalLoads) :-
calculate_total_laundry_loads(TotalLoads).
% Uncomment the following line to run the query
% query(TotalLoads).
%query(TotalLoads).