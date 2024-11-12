% Define the initial candy count for Ginger and Amy
initial_candy_count(100).
% Calculate the total candy consumed by each person over two weeks
candy_consumed(DailyConsumption, TotalDays, TotalCandyConsumed) :-
TotalCandyConsumed is DailyConsumption * TotalDays.
% Calculate the remaining candy count for each person
remaining_candy(InitialCount, TotalConsumed, RemainingCandy) :-
RemainingCandy is InitialCount - TotalConsumed.
% Calculate the difference in candy counts between Amy and Ginger
candy_difference(Difference) :-
initial_candy_count(InitialCount),
candy_consumed(4, 14, GingerConsumed),  % Ginger eats 4 pieces/day for 14 days
candy_consumed(3, 14, AmyConsumed),     % Amy eats 3 pieces/day for 14 days
remaining_candy(InitialCount, GingerConsumed, GingerRemaining),
remaining_candy(InitialCount, AmyConsumed, AmyRemaining),
Difference is AmyRemaining - GingerRemaining.
% Query predicate to find the difference in candy counts after two weeks
query(Difference) :-
candy_difference(Difference).
% Uncomment the line below to run the query
% query(Difference).
%query(Difference).