% Define chalk remaining after a given day
chalk_remaining(Day, ChalkLength) :-
initial_chalk_length(InitialLength),
initial_usage_percentage(InitialUsage),
daily_usage_percentage(DailyUsage),
recycle_length(MinRecycleLength),
Remaining is InitialLength * (1 - InitialUsage / 100) * (1 - DailyUsage / 100) ^ Day,
(Remaining < MinRecycleLength -> ChalkLength = Remaining ; ChalkLength = 0).
% Define the day when the chalk needs to be recycled
recycle_day(ChalkLength, Day) :-
chalk_remaining(Day, ChalkLength),
ChalkLength =< 2,
!.
% Initial chalk length and usage percentages
initial_chalk_length(5).
initial_usage_percentage(45).
daily_usage_percentage(20).
recycle_length(2).
% Query to find the day when the chalk needs to be recycled
query(Day) :-
recycle_day(ChalkLength, Day).
% Uncomment the following line to run the query
% ?- query(Day).
%query(Day).