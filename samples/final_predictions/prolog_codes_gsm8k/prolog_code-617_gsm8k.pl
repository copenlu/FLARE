% Define the rule to calculate additional hours needed to travel additional distance
additional_hours(AdditionalDistance, InitialTime, AdditionalTime) :-
Speed is 1200 / 3, % Calculate speed in miles per hour
AdditionalTime is AdditionalDistance / Speed.
% Query to find the additional hours needed to travel 2000 miles
query_additional_hours(AdditionalTime) :-
additional_hours(2000, 3, AdditionalTime),
TotalTime is 3 + AdditionalTime,
format('Total time to travel 3200 miles: ~2f hours', [TotalTime]).
% Define a predicate that returns the correct numerical answer when queried
query(AdditionalTime) :-
query_additional_hours(AdditionalTime).
% Uncomment the following line to run the query
% ?- query(AdditionalTime).
%query(AdditionalTime).