% Define the amount of water in a drink
water_content(DrinkVolume, WaterFraction, WaterAmount) :-
WaterAmount is DrinkVolume * WaterFraction.
% Define the total water content in the remaining 24 liters
total_water_remaining(OrangeVolume, PineappleVolume, SpilledVolume, RemainingWater) :-
water_content(OrangeVolume, 2/3, OrangeWater),
water_content(PineappleVolume, 3/5, PineappleWater),
RemainingWater is OrangeWater + PineappleWater - SpilledVolume.
% Predicate to encapsulate the entire calculation and output the total water content in the remaining 24 liters
calculate_total_water(RemainingWater) :-
total_water_remaining(10, 15, 1, RemainingWater).  % Orange drink volume: 10, Pineapple drink volume: 15, Spilled volume: 1
% Query to find the total water content in the remaining 24 liters
query(RemainingWater) :-
calculate_total_water(RemainingWater).
% Uncomment the following line to run the query
% ?- query(RemainingWater).
%query(RemainingWater).