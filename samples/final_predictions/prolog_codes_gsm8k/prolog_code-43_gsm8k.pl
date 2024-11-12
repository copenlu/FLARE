% Define the rule to calculate the maximum distance Polly can stand from the dragon and still hit it with the javelin
max_distance_to_hit_dragon(MaxDistance) :-
DistanceWithoutGemstone = 400,  % Distance Polly can throw the javelin without the gemstone
DistanceWithGemstone is DistanceWithoutGemstone * 3,  % Distance Polly can throw the javelin with the gemstone
MaxDistance is min(DistanceWithGemstone, 1000).  % Maximum distance to hit the dragon
% Query to find the maximum distance Polly can stand from the dragon and still hit it with the javelin
query_max_distance_to_hit_dragon(MaxDistance) :-
max_distance_to_hit_dragon(MaxDistance).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_max_distance_to_hit_dragon(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).