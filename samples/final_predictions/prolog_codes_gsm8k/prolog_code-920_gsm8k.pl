% Define the predicate to calculate the additional distance rowed by Anis compared to Dijana
% Params: DijanaDistance, AnisAdditionalDistance
additional_distance(DijanaDistance, AnisAdditionalDistance) :-
AnisAdditionalDistance is DijanaDistance * 1/5.
% Define the predicate to calculate the total distance rowed by Anis
% Params: DijanaDistance, AnisTotalDistance
total_distance_anis(DijanaDistance, AnisTotalDistance) :-
additional_distance(DijanaDistance, Additional),
AnisTotalDistance is DijanaDistance + Additional.
% Define the predicate to calculate the total distance rowed by both Dijana and Anis
% Params: DijanaDistance, TotalDistance
total_distance(DijanaDistance, TotalDistance) :-
total_distance_anis(DijanaDistance, AnisDistance),
TotalDistance is DijanaDistance + AnisDistance.
% Calculate the total distance rowed by both Dijana and Anis with Dijana rowing 50 miles
query(TotalDistance) :-
total_distance(50, TotalDistance).
% Uncomment the following line to run the query
% ?- query(TotalDistance).
%query(TotalDistance).