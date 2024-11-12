% Define a predicate to calculate the miles the last dog needs to walk per day
last_dog_miles(TotalMiles, MilesDog1, MilesDog2, MilesDog3, MilesLastDog) :-
% Calculate the total miles needed for all 4 dogs per day
TotalMilesNeeded is TotalMiles * 4,
% Calculate the total miles needed by the first three dogs
TotalMilesFirstThreeDogs is MilesDog1 + MilesDog2 + MilesDog3,
% Calculate the miles needed by the last dog
MilesLastDog is TotalMilesNeeded - TotalMilesFirstThreeDogs.
% Define a query predicate to find out the miles the last dog needs to walk per day
query(MilesLastDog) :-
% Total miles needed on average is 3 miles per day
% Dog 1 needs to walk 1 mile, Dog 2 needs to walk 4 miles, Dog 3 needs to walk 3 miles
last_dog_miles(3, 1, 4, 3, MilesLastDog).
% Uncomment the line below to run the query in SWI-Prolog
% query(MilesLastDog).
%query(MilesLastDog).