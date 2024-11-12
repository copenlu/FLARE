% Define the distance for each type of walk based on the provided details
% Calculates the total distance Benjamin walks to work in a week
work_distance(WorkDistance) :-
WorkDistance is 5 * (6 * 2).  % 5 days a week, 6 miles each way, round trip
% Calculates the total distance Benjamin walks his dog in a week
dog_walk_distance(DogWalkDistance) :-
DogWalkDistance is 14 * 2.  % Twice a day every day, 2 miles each walk
% Calculates the total distance Benjamin walks to his best friend's house in a week
friend_house_distance(FriendHouseDistance) :-
FriendHouseDistance is 2.  % Once a week, 1 mile each way, round trip
% Calculates the total distance Benjamin walks to the convenience store in a week
store_distance(StoreDistance) :-
StoreDistance is 2 * (3 * 2).  % Twice a week, 3 miles each way, round trip
% Calculates the total walking distance in a week by summing up all individual distances
total_weekly_distance(TotalDistance) :-
work_distance(WorkDistance),
dog_walk_distance(DogWalkDistance),
friend_house_distance(FriendHouseDistance),
store_distance(StoreDistance),
TotalDistance is WorkDistance + DogWalkDistance + FriendHouseDistance + StoreDistance.
% Query predicate to get the total weekly walking distance
query(TotalDistance) :-
total_weekly_distance(TotalDistance).
% Uncomment the following line to run the query and find out the total distance Benjamin walks in a week
% ?- query(TotalDistance).
%query(TotalDistance).