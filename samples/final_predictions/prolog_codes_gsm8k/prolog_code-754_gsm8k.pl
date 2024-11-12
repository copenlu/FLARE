% Define the initial number of apples Boris has
boris_apples(100).
% Define the difference in apple count between Boris and Beck
difference_apples(23).  % Assumed difference between Boris and Beck
% Define the number of apples Boris gives to Beck
apples_given(10).  % Assumed number of apples Boris gives to Beck
% Calculate the difference in apple count between Beck and Boris after the exchange
apple_difference(BorisApples, Difference, ApplesGiven, FinalDifference) :-
BeckApples is BorisApples - Difference,
BeckApplesAfterExchange is BeckApples + ApplesGiven,
BorisApplesAfterExchange is BorisApples - ApplesGiven,
FinalDifference is BorisApplesAfterExchange - BeckApplesAfterExchange.
% Query predicate to find the final difference in apple count between Beck and Boris
query(FinalDifference) :-
boris_apples(BorisApples),
difference_apples(Difference),
apples_given(ApplesGiven),
apple_difference(BorisApples, Difference, ApplesGiven, FinalDifference).
% Uncomment the line below to run the query
% query(FinalDifference).
%query(FinalDifference).