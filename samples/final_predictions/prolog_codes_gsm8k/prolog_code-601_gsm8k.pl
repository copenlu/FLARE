% Define the rule to calculate the total calories burned during aerobics
calories_burned_aerobics(TotalCalories) :-
TotalCalories is 2 * 500.  % Assuming Hannah spends 2 hours doing aerobics burning 500 calories per hour
% Define the rule to calculate the total calories burned during running
calories_burned_running(TotalCalories) :-
TotalCalories is 1 * 600.  % Assuming Hannah spends 1 hour running burning 600 calories per hour
% Define the rule to calculate the total water needed to drink
water_needed(TotalCalories, WaterNeeded) :-
WaterNeeded is TotalCalories / 200 * 100.  % Hannah needs 100 ml of water for every 200 calories burned
% Query to find the total amount of water Hannah needs to drink
query_water_needed(WaterNeeded) :-
calories_burned_aerobics(AerobicsCalories),
calories_burned_running(RunningCalories),
TotalCalories is AerobicsCalories + RunningCalories,
water_needed(TotalCalories, WaterNeeded).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_water_needed(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).