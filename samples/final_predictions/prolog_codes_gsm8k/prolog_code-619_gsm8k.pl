% Define the rule to calculate Howard's spending on Tuesday
spending_on_tuesday(MondaySpending, TuesdaySpending) :-
TuesdaySpending is 2 * MondaySpending.
% Define the rule to calculate Howard's spending on Wednesday
spending_on_wednesday(TuesdaySpending, WednesdaySpending) :-
WednesdaySpending is 4 * TuesdaySpending.
% Define the rule to calculate the total spending over three days
total_spending(MondaySpending, TuesdaySpending, WednesdaySpending, TotalSpending) :-
TotalSpending is MondaySpending + TuesdaySpending + WednesdaySpending.
% Define the rule to calculate the remaining amount of money Howard has
remaining_amount(OriginalAmount, TotalSpending, RemainingAmount) :-
RemainingAmount is OriginalAmount - TotalSpending.
% Given values
MondaySpending = 8,  % Assumed atom/predicate
OriginalAmount = 100.  % Assumed atom/predicate
% Query to find the remaining amount of money Howard has
query(RemainingAmount) :-
spending_on_tuesday(MondaySpending, TuesdaySpending),
spending_on_wednesday(TuesdaySpending, WednesdaySpending),
total_spending(MondaySpending, TuesdaySpending, WednesdaySpending, TotalSpending),
remaining_amount(OriginalAmount, TotalSpending, RemainingAmount).
% Uncomment the following line to run the query
% ?- query(RemainingAmount).
%query(RemainingAmount).