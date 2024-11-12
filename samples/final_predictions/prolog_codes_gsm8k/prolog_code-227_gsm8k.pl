% Define how much water is left in the tank after Celine used some water
water_left_after_use(InitialWater, WaterUsed, WaterLeft) :-
WaterLeft is InitialWater - WaterUsed.
% Define how much rainwater Celine collected (twice the amount of water left)
rainwater_collected(WaterLeft, RainwaterCollected) :-
RainwaterCollected is 2 * WaterLeft.
% Define the total amount of water in the tank after Celine's actions
total_water_in_tank(InitialWater, WaterUsed, TotalWater) :-
water_left_after_use(InitialWater, WaterUsed, WaterLeft),
rainwater_collected(WaterLeft, RainwaterCollected),
TotalWater is WaterLeft + RainwaterCollected.
% Query predicate to run the program and get the result
query(TotalWater) :-
total_water_in_tank(120, 90, TotalWater).
% Uncomment the following line to run the query
% ?- query(TotalWater).
%query(TotalWater).