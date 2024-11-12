% Define the rule to calculate the number of cars towed on a given day
cars_towed(Day, Cars) :-
Day =< 3,
Cars is 10.
cars_towed(Day, Cars) :-
Day > 3,
Cars is 10 - (Day - 3) * 4.
% Calculate the total number of cars towed for the week
total_cars_towed(TotalCars) :-
findall(Cars, (between(1, 7, Day), cars_towed(Day, Cars)), CarsList),
sum_list(CarsList, TotalCars).
% Define a predicate that returns the correct numerical answer when queried
query(TotalCars) :-
total_cars_towed(TotalCars).
% Uncomment the following line to run the query
% ?- query(TotalCars).
%query(TotalCars).