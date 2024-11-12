% Define the predicate to calculate the total distance covered by the train in a day
total_distance_per_day(TotalDistance) :-
TotalDistance is 3 * (75 + 100 + (75 + 100 - 50)). % 3 trips per day, each trip covering 75, 100, and 125 miles
% Define the predicate to calculate the number of days between services
days_between_services(Days) :-
total_distance_per_day(TotalDistancePerDay),
Days is 18000 / TotalDistancePerDay. % Service interval is 18000 miles
% Query predicate to run the program and get the result
query(Days) :-
days_between_services(Days).
% Uncomment the following line to run the query
% ?- query(Days).
%query(Days).