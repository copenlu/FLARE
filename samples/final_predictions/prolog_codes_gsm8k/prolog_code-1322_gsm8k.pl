% Define the rule for calculating total number of sunflower seeds
total_seeds(NumSeedsSmallSunflower, TotalSeeds) :-
NumSeedsLargeSunflower is NumSeedsSmallSunflower + (NumSeedsSmallSunflower * 0.5), % Calculate the number of seeds in a large sunflower
TotalSeeds is NumSeedsSmallSunflower + NumSeedsLargeSunflower. % Calculate the total number of sunflower seeds
% Define a predicate to execute the specific query with given values
query(TotalSeeds) :-
total_seeds(36, TotalSeeds). % Given that a small sunflower has 3 dozen seeds, which is 36 seeds
% Uncomment the line below to run the query
% ?- query(TotalSeeds).
%query(TotalSeeds).