% Define the remaining_amount predicate to calculate the remaining amount after a specified number of months
remaining_amount(InitialAmount, MonthlyWithdrawal, Months, RemainingAmount) :-
RemainingAmount is InitialAmount - (MonthlyWithdrawal * Months).
% Query predicate to run the program and get the result
query(RemainingAmount) :-
remaining_amount(3000, 100, 24, RemainingAmount).
% Uncomment the following line to run the query
% ?- query(RemainingAmount).
%query(RemainingAmount).