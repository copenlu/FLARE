% Define the distances Sam ran on each day
distance_run(monday, 3).
distance_run(wednesday, 3).
distance_run(friday, 3).
distance_run(tuesday, 5).
distance_run(thursday, 5).
% Define the rule to calculate total distance run in a week
total_distance_run(WeekDistance) :-
findall(Distance, distance_run(_, Distance), Distances),
sum_list(Distances, WeekDistance).
% Query predicate to get the total distance Sam ran in a week
query(WeekDistance) :-
total_distance_run(WeekDistance).
% Uncomment the following line to run the query
% ?- query(WeekDistance).
%query(WeekDistance).