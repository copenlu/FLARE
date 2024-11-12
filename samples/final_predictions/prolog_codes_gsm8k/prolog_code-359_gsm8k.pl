% Define the durations of each after-work activity
yoga_class(1).
cooking_class(YogaDuration) :- YogaDuration is 3 * 1.
cheese_tasting(0.5).
museum_tour(CookingDuration) :- CookingDuration is 0.5 * 3.
errands(2).
% Define the total_hours predicate to calculate the total hours of all activities
total_hours(TotalHours) :-
yoga_class(Yoga),
cooking_class(Cooking),
cheese_tasting(Cheese),
museum_tour(Museum),
errands(Errands),
TotalHours is Yoga + Cooking + Cheese + Museum + Errands.
% Query predicate to run the program and get the result
query(TotalHours) :-
total_hours(TotalHours).
% Uncomment the following line to run the query
% ?- query(TotalHours).
%query(TotalHours).