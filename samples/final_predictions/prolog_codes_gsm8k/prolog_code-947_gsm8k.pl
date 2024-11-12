% Define the rule to calculate the least number of berries per trip
least_berrie_per_trip(TotalBerries, TotalHours, BerriesPerTrip) :-
TotalTrips is TotalHours // 4,  % Calculate total trips possible in the given time
BerriesPerTrip is TotalBerries / TotalTrips.  % Calculate least berries per trip
% Query to find the least number of berries per trip to collect 24 berries in 8 hours
query_least_berrie_per_trip(BerriesPerTrip) :-
least_berrie_per_trip(24, 8, BerriesPerTrip).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_least_berrie_per_trip(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).