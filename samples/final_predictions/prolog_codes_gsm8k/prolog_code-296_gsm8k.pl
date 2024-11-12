% Define the rule for calculating total weight of flagstones
total_weight(NumFlagstones, WeightFlagstone, TotalWeight) :-
TotalWeight is NumFlagstones * WeightFlagstone.
% Define the rule for calculating the number of trucks needed
trucks_needed(TotalWeight, TruckCapacity, NumTrucks) :-
NumTrucks is ceil(TotalWeight / TruckCapacity).
% Given data
NumFlagstones = 80, % Assumed atom/predicate
WeightFlagstone = 75, % Assumed atom/predicate
TruckCapacity = 2000. % Assumed atom/predicate
% Define the query predicate to calculate the number of trucks needed
query(NumTrucks) :-
total_weight(NumFlagstones, WeightFlagstone, TotalWeight),
trucks_needed(TotalWeight, TruckCapacity, NumTrucks).
% Uncomment the following line to run the query
% ?- query(NumTrucks).
%query(NumTrucks).