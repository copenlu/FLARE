% Define the distance walked on weekdays and weekends
distance_weekday(20).
distance_weekend(10).
% Define the rule to calculate the total distance walked in a week
total_distance_walked(WeekDistance) :-
distance_weekday(WeekdayDistance),
distance_weekend(WeekendDistance),
WeekDistance is (WeekdayDistance * 5) + (WeekendDistance * 2).
% Define a query predicate to find out the total distance Pancho walks in a week
query(WeekDistance) :-
total_distance_walked(WeekDistance).
% Uncomment the line below to run the query in SWI-Prolog
% query(WeekDistance).
%query(WeekDistance).