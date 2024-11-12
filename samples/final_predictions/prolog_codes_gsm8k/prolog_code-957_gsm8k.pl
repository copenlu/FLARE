% Define the total distance spat by Zoey
total_distance_zoey(TotalDistanceZoey) :-
SeedsZoey = 40,              % Assumed number of seeds Zoey has
DistancePerSeedZoey = 10,    % Assumed distance Zoey spits each seed
TotalDistanceZoey is SeedsZoey * DistancePerSeedZoey.
% Define the total distance spat by Sydney
total_distance_sydney(TotalDistanceSydney) :-
SeedsSydney = 35,            % Assumed number of seeds Sydney has
DistancePerSeedSydney = 12,  % Assumed distance Sydney spits each seed
TotalDistanceSydney is SeedsSydney * DistancePerSeedSydney.
% Define the average total distance spat by both participants
average_total_distance(AverageDistance) :-
total_distance_zoey(TotalDistanceZoey),
total_distance_sydney(TotalDistanceSydney),
TotalDistance is TotalDistanceZoey + TotalDistanceSydney,
AverageDistance is TotalDistance / 2.
% Query to find the average total distance spat
query(AverageDistance) :-
average_total_distance(AverageDistance).
% Uncomment the line below to run the query
% ?- query(AverageDistance).
%query(AverageDistance).