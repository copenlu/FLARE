% Define the speed of the average car
average_car_speed(120).
% Calculate the speed of the second fastest car based on the average car's speed
second_fastest_car_speed(AverageSpeed, SecondFastestSpeed) :-
SecondFastestSpeed is AverageSpeed * 5.
% Calculate the speed of the fastest car based on the second fastest car's speed
fastest_car_speed(SecondFastestSpeed, FastestSpeed) :-
FastestSpeed is SecondFastestSpeed * 1.25.
% Query predicate to find the speed of the fastest car
query(FastestSpeed) :-
average_car_speed(AvgSpeed),
second_fastest_car_speed(AvgSpeed, SecondSpeed),
fastest_car_speed(SecondSpeed, FastestSpeed).
% Uncomment the line below to run the query
% query(FastestSpeed).
%query(FastestSpeed).