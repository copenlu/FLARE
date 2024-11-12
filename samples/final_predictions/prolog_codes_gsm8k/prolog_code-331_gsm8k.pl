% Define the weakening_effect predicate to calculate the total weakening effect
weakening_effect(TotalCoolingDegrees, IceCubeCoolingDegrees, IceCubeWeakeningEffect, CreamAdded, TotalWeakeningEffect) :-
TotalWeakeningEffect is (TotalCoolingDegrees / IceCubeCoolingDegrees) * IceCubeWeakeningEffect + CreamAdded.
% Define the values for the cooling and cream addition
% Assumed atom/predicate
TotalCoolingDegrees = 65.
IceCubeCoolingDegrees = 13.
IceCubeWeakeningEffect = 12.
CreamAdded = 15.
% Query predicate to run the program and get the result
query(TotalWeakeningEffect) :-
weakening_effect(TotalCoolingDegrees, IceCubeCoolingDegrees, IceCubeWeakeningEffect, CreamAdded, TotalWeakeningEffect).
% Uncomment the following line to run the query
% ?- query(TotalWeakeningEffect).
%query(TotalWeakeningEffect).