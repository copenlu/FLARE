% Define a predicate to calculate the amount of secret seasoning needed
seasoning_needed(MeatballsToMake, MeatballsPerPound, SeasoningRatio, SeasoningNeeded) :-
% Calculate the total pounds of ground beef needed
TotalPoundsNeeded is MeatballsToMake / MeatballsPerPound,
% Calculate the amount of secret seasoning required
SeasoningNeeded is TotalPoundsNeeded * SeasoningRatio.
% Define a query predicate to find out the amount of secret seasoning needed for 80 meatballs
query(SeasoningNeeded) :-
% Aiden wants to make 80 meatballs, 16 meatballs per pound, 2 tablespoons per pound
seasoning_needed(80, 16, 2, SeasoningNeeded).
% Uncomment the line below to run the query in SWI-Prolog
% query(SeasoningNeeded).
%query(SeasoningNeeded).