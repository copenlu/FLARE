% Define rules to calculate distance traveled in each leg of the journey
distance_south(Speed, Time, Distance) :-
Distance is Speed * Time.
distance_north(Speed, Time, Distance) :-
Distance is Speed * Time.
% Define rule to calculate the net distance between the northern and southern homes
net_distance(DistanceSouth, DistanceNorth, NetDistance) :-
NetDistance is DistanceSouth - DistanceNorth.
% Calculate the distances and net distance
distance_south(30, 10, DistanceSouth),  % Speed: 30 mph, Time: 10 hours
distance_north(18, 2, DistanceNorth),    % Speed: 18 mph, Time: 2 hours
distance_south(22, 5, DistanceSouth2),   % Speed: 22 mph, Time: 5 hours
net_distance(DistanceSouth + DistanceSouth2, DistanceNorth, NetDistance).  % Calculate net distance
% Predicate to encapsulate the entire calculation and output the net distance
calculate_distance(NetDistance) :-
distance_south(30, 10, DistanceSouth),
distance_north(18, 2, DistanceNorth),
distance_south(22, 5, DistanceSouth2),
net_distance(DistanceSouth + DistanceSouth2, DistanceNorth, NetDistance).
% Query to find the net distance between the northern and southern homes
query(NetDistance) :-
calculate_distance(NetDistance).
% Uncomment the following line to run the query
% ?- query(NetDistance).
%query(NetDistance).