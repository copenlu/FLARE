% Define the rule to calculate the distance biked
distance_biked(Speed, Time, Distance) :-
Distance is Speed * Time.
% Calculate the distance biked by Alisa
distance_biked_alisa(DistanceAlisa) :-
distance_biked(12, 4.5, DistanceAlisa).
% Calculate the distance biked by Stanley
distance_biked_stanley(DistanceStanley) :-
distance_biked(10, 2.5, DistanceStanley).
% Define the rule to calculate the total miles biked by Alisa and Stanley
total_distance_biked(TotalDistance) :-
distance_biked_alisa(DistanceAlisa),
distance_biked_stanley(DistanceStanley),
TotalDistance is DistanceAlisa + DistanceStanley.
% Query to find the total miles biked by Alisa and Stanley
query(TotalDistance) :-
total_distance_biked(TotalDistance).
% Uncomment the following line to run the query
% ?- query(TotalDistance).
%query(TotalDistance).