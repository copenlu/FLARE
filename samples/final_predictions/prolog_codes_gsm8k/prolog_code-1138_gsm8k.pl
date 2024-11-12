% Facts
total_miles(9300).
miles_per_walk(125).
walks_per_day(2).
% Predicates
current_daily_mileage(CurrentMileage) :-
miles_per_walk(MilesPerWalk),
walks_per_day(WalksPerDay),
CurrentMileage is MilesPerWalk * WalksPerDay.
total_daily_mileage(TotalMileage) :-
miles_per_walk(MilesPerWalk),
walks_per_day(WalksPerDay),
TotalMileage is MilesPerWalk * WalksPerDay.
additional_daily_mileage_needed(AdditionalMileage) :-
total_miles(TotalMiles),
total_daily_mileage(TotalDailyMileage),
AdditionalMileage is TotalMiles - TotalDailyMileage.
% Query
query(AdditionalMileage) :-
additional_daily_mileage_needed(AdditionalMileage).
% Uncomment the following line to run the query
% ?- query(AdditionalMileage).
%query(AdditionalMileage).