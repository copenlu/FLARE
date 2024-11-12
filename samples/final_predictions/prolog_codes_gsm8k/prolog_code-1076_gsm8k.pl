% Define the rule to calculate the remaining distance Bernice needs to drive
remaining_distance(DistanceDriven, TotalDistance, RemainingDistance) :-
RemainingDistance is TotalDistance - DistanceDriven.
% Query to find the remaining distance Bernice needs to drive
query_remaining_distance(RemainingDistance) :-
TotalDistance = 1955,  % Total distance from San Diego to New York City
DistanceDriven = 325 * 4,  % Distance Bernice drove each day for 4 days
remaining_distance(DistanceDriven, TotalDistance, RemainingDistance).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_remaining_distance(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).