% Define the building and melting rates
building_rate_per_hour(20).  % Jay can build 20 snowballs in an hour
melting_rate_per_hour(8).    % 2 snowballs melt every 15 minutes, equivalent to 8 snowballs melting in an hour
% Calculate the net building rate per hour
net_building_rate_per_hour(NetRate) :-
building_rate_per_hour(BuildingRate),
melting_rate_per_hour(MeltingRate),
NetRate is BuildingRate - MeltingRate.
% Determine the additional snowballs needed to reach 60
additional_snowballs_needed(AdditionalSnowballs) :-
CurrentSnowballs = 20,  % Jay starts with 20 snowballs
TargetSnowballs = 60,
AdditionalSnowballs is TargetSnowballs - CurrentSnowballs.
% Calculate the time required to reach 60 snowballs
time_to_reach_target(TimeInHours) :-
additional_snowballs_needed(AdditionalSnowballs),
net_building_rate_per_hour(NetRate),
TimeInHours is AdditionalSnowballs / NetRate.
% Query predicate to get the time required to reach 60 snowballs
query(TimeInHours) :-
time_to_reach_target(TimeInHours).
% Uncomment the following line to run the query
% query(TimeInHours).
%query(TimeInHours).