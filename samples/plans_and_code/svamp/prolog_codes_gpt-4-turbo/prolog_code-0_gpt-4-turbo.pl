% Define the rule to calculate the number of trees planted
plant_trees(InitialTrees, FinalTrees, PlantedTrees) :-
PlantedTrees is FinalTrees - InitialTrees.
% Define a predicate to run the query with initial and final tree counts
query(PlantedTrees) :-
InitialTrees = 15,  % Assumed initial number of trees
FinalTrees = 21,    % Assumed final number of trees after planting
plant_trees(InitialTrees, FinalTrees, PlantedTrees).
% Uncomment the line below to run the query in a Prolog environment
% ?- query(PlantedTrees).
%query(PlantedTrees).