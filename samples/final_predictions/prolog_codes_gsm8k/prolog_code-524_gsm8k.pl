% Define Gerald's daily earnings
daily_earnings(30).
% Calculate the remaining amount after deducting expenses
calculate_remaining_amount(DaysWorked, TotalSpent, RemainingAmount) :-
daily_earnings(EarningsPerDay),
TotalEarned is EarningsPerDay * DaysWorked,
RemainingAmount is TotalEarned - TotalSpent.
% Query to calculate how much money Gerald has left after working for a week and spending $100
query(RemainingAmount) :-
calculate_remaining_amount(7, 100, RemainingAmount).
% Uncomment the following line to run the query and calculate the remaining amount
% ?- query(RemainingAmount).
%query(RemainingAmount).