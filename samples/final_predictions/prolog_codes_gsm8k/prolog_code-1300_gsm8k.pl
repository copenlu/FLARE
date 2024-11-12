% Define the rule to calculate the distance traveled in a given direction
distance_traveled(west, Distance) :- Distance is 18 * 5.  % Distance traveled when driving west
distance_traveled(east, Distance) :- Distance is 18 * 8. % Distance traveled when driving east
% Calculate the net distance from the starting point
net_distance_from_house(NetDistance) :-
distance_traveled(west, DistanceWest),   % Calculate distance traveled west
distance_traveled(east, DistanceEast),   % Calculate distance traveled east
NetDistance is DistanceWest - DistanceEast.  % Calculate net distance
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
net_distance_from_house(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).