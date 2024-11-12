% Define the speed of Mason's bike journey in miles per hour
speed(8).
% Define the time Mason travels in the first leg of the journey
time_leg1(4).
% Define the time Mason travels in the second leg of the journey
time_leg2(6).
% Calculate the distance traveled in the first leg of the journey
distance_leg1(Speed, Time, Distance) :-
Distance is Speed * Time.
% Calculate the distance traveled in the second leg of the journey
distance_leg2(Speed, Time, Distance) :-
Distance is Speed * Time.
% Calculate the total distance traveled by summing the distances of both legs
total_distance(Distance) :-
speed(Speed),
time_leg1(Time1),
time_leg2(Time2),
distance_leg1(Speed, Time1, Distance1),
distance_leg2(Speed, Time2, Distance2),
Distance is Distance1 + Distance2.
% Query predicate to find the total distance traveled by Mason
query(Distance) :-
total_distance(Distance).
% Uncomment the line below to run the query
% query(Distance).
%query(Distance).