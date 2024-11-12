% Define the total amount needed to raise
total_goal(6300).
% Define the amount raised after the first 3 hours
amount_raised_initially(2100).
% Calculate the remaining amount needed to reach the goal
remaining_amount_needed(TotalGoal, AmountRaisedInitially, RemainingAmountNeeded) :-
RemainingAmountNeeded is TotalGoal - AmountRaisedInitially.
% Calculate the number of hours needed to fundraise in total
hours_needed(RemainingAmountNeeded, HoursNeeded) :-
HoursNeeded is RemainingAmountNeeded // 3.  % Assuming equal amount raised per hour
% Query predicate to find the number of hours needed to reach the fundraising goal
query(HoursNeeded) :-
total_goal(TotalGoal),
amount_raised_initially(AmountRaisedInitially),
remaining_amount_needed(TotalGoal, AmountRaisedInitially, RemainingAmountNeeded),
hours_needed(RemainingAmountNeeded, HoursNeeded).
% Uncomment the line below to run the query
% query(HoursNeeded).
%query(HoursNeeded).