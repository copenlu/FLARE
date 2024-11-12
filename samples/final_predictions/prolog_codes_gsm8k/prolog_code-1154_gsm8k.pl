% Define the distance Alfie flies in one day
distance_per_day(400).
% Define the total distance Alfie needs to cover (half the circumference of the earth)
half_earth_distance(20000).
% Define the predicate to calculate the number of days to cover a given distance
days_to_cover_distance(TotalDistance, Days) :-
distance_per_day(DistancePerDay),
Days is TotalDistance / DistancePerDay.
% Query predicate to run the program and get the result
query(Days) :-
half_earth_distance(TotalDistance),
days_to_cover_distance(TotalDistance, Days).
% Uncomment the following line to run the query
% ?- query(Days).
%query(Days).