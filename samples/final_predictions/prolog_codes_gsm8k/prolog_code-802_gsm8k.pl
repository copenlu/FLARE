% Define constants
days_per_week(7).
rides_per_day_usual(3).
multiplier_additional_days(2).
% Calculate total rides in a week
calculate_total_rides(TotalRides) :-
rides_per_day_usual(RidesPerDay),
multiplier_additional_days(Multiplier),
TotalRidesUsual is RidesPerDay * 5,
TotalRidesAdditional is RidesPerDay * Multiplier * 2,
TotalRides is TotalRidesUsual + TotalRidesAdditional.
% Query to find the total rides in a week
query(TotalRides) :-
calculate_total_rides(TotalRides).
% Uncomment the following line to run the query and calculate the total rides in a week
% ?- query(TotalRides).
%query(TotalRides).