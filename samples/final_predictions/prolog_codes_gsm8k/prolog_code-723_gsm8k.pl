% Define the cat's speed and the time in seconds
cat_speed(15). % Assumed cat's speed in feet per second
time_seconds(40). % Assumed time in seconds
% Define a rule to calculate the distance covered by the turtle
distance_covered(TurtleSpeed, Time, Distance) :-
TurtleSpeed is 15 / 5, % Calculate turtle's speed as 1/5 of cat's speed
Distance is TurtleSpeed * Time. % Calculate distance covered by turtle in given time
% Define a query predicate to find the distance covered by the turtle
query(Distance) :-
cat_speed(CatSpeed),
time_seconds(Time),
distance_covered(TurtleSpeed, Time, Distance).
% Uncomment the line below to run the query
% query(Distance).
%query(Distance).