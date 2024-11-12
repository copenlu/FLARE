% Define a predicate to calculate the net change in the number of trees each year
net_tree_change(PlantingRate, ChoppingRate, InitialTrees, Years, NetChange) :-
NetChange is (PlantingRate - ChoppingRate) * Years.
% Define a predicate to calculate the total number of trees after a specified number of years
total_trees_after_years(PlantingRate, ChoppingRate, InitialTrees, Years, TotalTrees) :-
net_tree_change(PlantingRate, ChoppingRate, InitialTrees, Years, NetChange),
TotalTrees is InitialTrees + NetChange.
% Define a predicate to calculate the number of trees that die after a specified number of years
trees_died_after_years(TotalTrees, DeathPercentage, TreesDied) :-
TreesDied is round(TotalTrees * DeathPercentage / 100).
% Define a query predicate to find out the final number of trees Tom has after 10 years
query(FinalTreesLeft) :-
% Planting 10 trees, chopping 2 trees, starting with 50 trees, after 10 years 30% die
total_trees_after_years(10, 2, 50, 10, TotalTrees),
trees_died_after_years(TotalTrees, 30, TreesDied),
FinalTreesLeft is TotalTrees - TreesDied.
% Uncomment the line below to run the query in SWI-Prolog
% query(FinalTreesLeft).
%query(FinalTreesLeft).