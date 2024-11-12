% Define the water requirement per kilometer
water_requirement_per_km(60).
% Calculate the total amount of water needed
calculate_water(TotalDistance, TotalWater) :-
water_requirement_per_km(Requirement),  % Assumed atom/predicate
TotalWater is TotalDistance * Requirement.
% Calculate the total distance run
TotalDistance is 8 * 0.25.
% Calculate the total amount of water needed
calculate_water(TotalDistance, TotalWater).
% Query predicate to run the program and get the result
query(TotalWater) :-
calculate_water(TotalDistance, TotalWater).
% Uncomment the following line to run the query
% ?- query(TotalWater).
%query(TotalWater).