% Define rules to calculate distance traveled by each person
distance_traveled(matteo, Distance) :-
Speed_Matteo is 55,
Time_Matteo is 4,
Distance is Speed_Matteo * Time_Matteo.
distance_traveled(shandy, Distance) :-
Speed_Shandy is 45,
Time_Shandy is 10,
Distance is Speed_Shandy * Time_Shandy.
% Define rule to find the difference in distance between Shandy and Matteo
difference_distance(Difference) :-
distance_traveled(matteo, Distance_Matteo),
distance_traveled(shandy, Distance_Shandy),
Difference is Distance_Shandy - Distance_Matteo.
% Query predicate to find the difference in distance between Shandy and Matteo
query(Difference) :-
difference_distance(Difference).
% Uncomment the line below to run the query
% query(Difference).
%query(Difference).