% Predicate to calculate the total distance traveled during the first week
distance_first_week(Distance) :-
Distance is 4 * 200 + 2 * (0.3 * 4 * 200).
% Predicate to calculate the total distance traveled during the second week
distance_second_week(Distance) :-
Distance is 7 * 300.
% Predicate to calculate the total distance traveled during the entire trip
total_distance(Total) :-
distance_first_week(FirstWeekDistance),
distance_second_week(SecondWeekDistance),
Total is FirstWeekDistance + SecondWeekDistance.
% Query predicate to find the total distance traveled by Tom during his two-week trip
query(TotalDistance) :-
total_distance(TotalDistance).
% Uncomment the following line to run the query
% ?- query(TotalDistance).
%query(TotalDistance).