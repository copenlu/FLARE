% Define the cost of a single bus trip and the number of trips per week
cost_per_trip(2.20).
trips_per_week(10).
weekly_pass_cost(20).
% Calculate the savings by buying a weekly bus pass
calculate_savings(CostPerTrip, TripsPerWeek, WeeklyPassCost, Savings) :-
TotalCostIndividualTrips is CostPerTrip * TripsPerWeek,
Savings is TotalCostIndividualTrips - WeeklyPassCost.
% Query predicate to run the program and get the result
query(Savings) :-
cost_per_trip(CostPerTrip),  % Get the cost of a single bus trip
trips_per_week(TripsPerWeek),  % Get the number of trips per week
weekly_pass_cost(WeeklyPassCost),  % Get the cost of the weekly bus pass
calculate_savings(CostPerTrip, TripsPerWeek, WeeklyPassCost, Savings).
% Uncomment the following line to run the query
% ?- query(Savings).
%query(Savings).