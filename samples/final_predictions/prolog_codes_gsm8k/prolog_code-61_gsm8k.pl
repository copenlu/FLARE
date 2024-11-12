% Define the rule to calculate the total number of raspberries
total_raspberries(Clusters, FruitsPerCluster, IndividualRaspberries, TotalRaspberries) :-
RaspberriesInClusters is Clusters * FruitsPerCluster,  % Calculate the total raspberries in clusters
TotalRaspberries is RaspberriesInClusters + IndividualRaspberries.  % Calculate the total number of raspberries
% Query to find the total number of raspberries on the bush
query_total_raspberries(TotalRaspberries) :-
total_raspberries(6, 20, 67, TotalRaspberries).  % Given values: 6 clusters, 20 fruits per cluster, 67 individual raspberries
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_total_raspberries(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).