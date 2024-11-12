% Define the rule for calculating the feed consumption and remaining feed
feed_consumption(NumPigs, DailyConsumptionPerPig, TotalFeedOrdered, RemainingFeed) :-
TotalDailyConsumption is NumPigs * DailyConsumptionPerPig,
TotalWeeklyConsumption is TotalDailyConsumption * 7,
RemainingFeed is TotalFeedOrdered - TotalWeeklyConsumption.
% Define a predicate to execute the specific query with given values
query(RemainingFeed) :-
feed_consumption(5, 4*2, 300, RemainingFeed).
% Uncomment the line below to run the query
% ?- query(RemainingFeed).
%query(RemainingFeed).