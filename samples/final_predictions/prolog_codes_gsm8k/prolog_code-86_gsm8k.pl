% Define constants
rose_bushes(3).
roses_per_bush(25).
thorns_per_rose(8).
% Calculate total number of thorns
total_thorns(TotalThorns) :-
rose_bushes(NumBushes),
roses_per_bush(NumRoses),
thorns_per_rose(NumThorns),
TotalThorns is NumBushes * NumRoses * NumThorns.
% Query to find the total number of thorns
query(TotalThorns) :-
total_thorns(TotalThorns).
% Uncomment the following line to run the query and calculate the total number of thorns
% ?- query(TotalThorns).
%query(TotalThorns).