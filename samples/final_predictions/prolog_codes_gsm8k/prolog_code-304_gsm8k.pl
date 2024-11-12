% Define the rule for calculating the number of weeks a bag of rice will last
weeks_to_last(BagWeight, DailyConsumption, WeeksToLast) :-
TotalDailyConsumption is 5 * 2 * DailyConsumption, % 5 members, 2 meals, 0.2 kg per person
DaysToLast is BagWeight / TotalDailyConsumption,
WeeksToLast is DaysToLast / 7.
% Define a predicate to execute the specific query with given values
query(WeeksToLast) :-
weeks_to_last(42, 0.2, WeeksToLast). % Bag weight of 42 kg, daily consumption of 0.2 kg per person
% Uncomment the line below to run the query
% ?- query(WeeksToLast).
%query(WeeksToLast).