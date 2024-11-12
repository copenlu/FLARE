% Define a predicate to calculate the total number of jellyfish created by a single spring in a given time period
jellyfish_created_by_spring(TimeInSeconds, JellyfishCount) :-
JellyfishCount is TimeInSeconds.
% Define a predicate to calculate the total number of jellyfish created by multiple springs in the same time period
jellyfish_created_by_springs(SpringCount, TimeInSeconds, TotalJellyfishCount) :-
jellyfish_created_by_spring(TimeInSeconds, SingleSpringJellyfish),
TotalJellyfishCount is SingleSpringJellyfish * SpringCount.
% Convert 4 hours to seconds
TimeInHours = 4,
TimeInSeconds is TimeInHours * 3600.
% Query to find the total number of jellyfish created by 5 springs in 4 hours
query_jellyfish_created_by_springs(TotalJellyfishCount) :-
jellyfish_created_by_springs(5, TimeInSeconds, TotalJellyfishCount).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_jellyfish_created_by_springs(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).