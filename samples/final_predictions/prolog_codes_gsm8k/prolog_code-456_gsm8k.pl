% Predicate to calculate the distance covered by the horse
distance_covered(Time, Speed, Distance) :-
Distance is (Time / 60) * Speed.
% Predicate to calculate the total cost of the hay
hay_cost(Distance, HayCost) :-
HayCost is (Distance / 2) * 3.
% Predicate to calculate the amount of change left after buying the hay
change_left(Money, HayCost, Change) :-
Change is Money - HayCost.
% Main predicate to calculate the amount of change Michael will have
calculate_change(Time, Speed, Money, Change) :-
distance_covered(Time, Speed, Distance),
hay_cost(Distance, HayCost),
change_left(Money, HayCost, Change).
% Query to find out how much change Michael will have after buying the hay
query(Change) :-
calculate_change(30, 32, 6*5, Change).
% Uncomment the following line to run the query
% ?- query(Change).
%query(Change).