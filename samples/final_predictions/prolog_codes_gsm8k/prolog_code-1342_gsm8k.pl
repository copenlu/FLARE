% Define a rule to calculate the time taken by a runner based on speed and distance
time_taken(Speed, Distance, Time) :-
Time is Distance / Speed.
% Define the speed of Aaron and Vanessa based on the given information
aaron_speed(8). % Assumed atom/predicate: Aaron's speed is 8 mph
vanessa_speed(VanessaSpeed) :- aaron_speed(AaronSpeed), VanessaSpeed is AaronSpeed / 2.
% Calculate the time taken by Vanessa to complete her part of the race
time_taken_vanessa(Distance, VanessaTime) :-
vanessa_speed(VanessaSpeed),
time_taken(VanessaSpeed, Distance, VanessaTime).
% Define a query predicate to find out the time taken by Vanessa
query(VanessaTime) :-
time_taken_vanessa(4, VanessaTime).
% Uncomment the line below to run the query in SWI-Prolog
% query(VanessaTime).
%query(VanessaTime).