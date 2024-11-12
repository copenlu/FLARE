% Define the number of days to travel to Rochester by car
days_to_rochester_by_car(Days) :-
Days is 6 / 2.
% Define the total travel days for bus and car trips
total_travel_days(BusDays, CarDays, TotalDays) :-
BusDays = 6,  % Given in the problem
days_to_rochester_by_car(CarDays),
TotalDays is BusDays + CarDays.
% Query predicate to run the program and get the result
query(TotalDays) :-
total_travel_days(6, CarDays, TotalDays).
% Uncomment the following line to run the query
% ?- query(TotalDays).
%query(TotalDays).