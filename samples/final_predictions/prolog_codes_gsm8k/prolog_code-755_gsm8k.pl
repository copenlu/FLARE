% Facts defining water usage per cube
water_usage(giant, 4).
water_usage(medium, 2).
water_usage(small, 0.5).
% Rule to calculate remaining water
water_left(RemainingWater) :-
TotalWater = 32,
TotalWaterUsed is 3 * water_usage(giant) + 7 * water_usage(medium) + 8 * water_usage(small),
RemainingWater is TotalWater - TotalWaterUsed.
% Query predicate to find the remaining ounces of water
query(RemainingWater) :-
water_left(RemainingWater).
% Uncomment the line below to run the query
% query(RemainingWater).
%query(RemainingWater).