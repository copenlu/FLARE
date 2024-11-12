% Define a predicate to calculate the total number of crabs the three individuals have together
total_crabs(BoCrabs, MonicCrabs, RaniCrabs, Total) :-
% Calculate the number of crabs Monic has (4 fewer than Bo)
MonicCrabs is BoCrabs - 4,
% Calculate the number of crabs Rani has (10 more than Monic)
RaniCrabs is MonicCrabs + 10,
% Calculate the total number of crabs
Total is BoCrabs + MonicCrabs + RaniCrabs.
% Define a query predicate to find out the total number of crabs the three individuals have together
query(Total) :-
% Given that Bo has 40 crabs
total_crabs(40, MonicCrabs, RaniCrabs, Total).
% Uncomment the line below to run the query in SWI-Prolog
% query(Total).
%query(Total).