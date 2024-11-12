% Define the rate of water intake (2 liters for every 10 feet rowed)
rate_of_water_intake(2, 10).
% Calculate Julia's rowing speed
rowing_speed(Distance, Time, Speed) :-
Speed is Distance / Time.
% Calculate the total distance to the shore
total_distance_to_shore(ShoreTime, Speed, DistanceToShore) :-
DistanceToShore is Speed * ShoreTime.
% Calculate the total amount of water taken on
total_water_taken(DistanceToShore, Rate, TotalWater) :-
TotalWater is (DistanceToShore / Rate) * Rate.
% Query to find out how much water the boat has taken on
query(TotalWater) :-
rate_of_water_intake(Rate, Distance),
rowing_speed(20, 16, Speed),
total_distance_to_shore(64, Speed, DistanceToShore),
total_water_taken(DistanceToShore, Rate, TotalWater).
% Uncomment the following line to run the query and calculate the total water taken on by the boat
% ?- query(TotalWater).
%query(TotalWater).