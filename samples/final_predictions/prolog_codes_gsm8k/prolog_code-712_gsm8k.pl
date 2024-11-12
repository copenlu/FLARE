% Calculate the number of 8-point bucks
calculate_8_point_bucks(TotalDeer, Num8PointBucks) :-
TotalBucks is 0.5 * TotalDeer, % Calculate total bucks (50% of total deer)
Num8PointBucks is 0.2 * TotalBucks. % Calculate 8-point bucks (20% of total bucks)
% Query to find the number of 8-point bucks among 50 deer
query(Num8PointBucks) :-
calculate_8_point_bucks(50, Num8PointBucks).
% Uncomment the following line to run the query and calculate the number of 8-point bucks
% ?- query(Num8PointBucks).
%query(Num8PointBucks).