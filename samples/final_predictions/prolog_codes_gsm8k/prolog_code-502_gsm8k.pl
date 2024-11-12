% Define the total cost of the toy car, current savings, and daily savings
total_cost(12).
current_savings(4).
daily_savings(2).
% Calculate the number of days needed to save the remaining amount
calculate_days_to_save(Days) :-
total_cost(TotalCost),
current_savings(Savings),
daily_savings(DailySavings),
RemainingAmount is TotalCost - Savings,
Days is RemainingAmount / DailySavings.
% Query to calculate the number of days needed to save the remaining amount
query(Days) :-
calculate_days_to_save(Days).
% Uncomment the following line to run the query and calculate the number of days needed
% ?- query(Days).
%query(Days).