% Given speed of kangaroos and total time taken
speed_kangaroo(K).
time_taken_kangaroos(18).
% Speed of turtles is half the speed of kangaroos
speed_turtle(K/2).
% Calculate the time taken by turtles based on speed relationship
time_taken_turtles(Time) :-
speed_kangaroo(K),
speed_turtle(K/2),
time_taken_kangaroos(TimeKangaroos),
Time is TimeKangaroos * K / (K/2).
% Query predicate to find the time taken by turtles
query(Time) :-
time_taken_turtles(Time).
% Uncomment the line below to run the query
% query(Time).
%query(Time).