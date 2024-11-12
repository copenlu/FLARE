% Define the predicate to calculate the total amount Janeth owes after adding the 10% interest
total_amount_borrowed(BorrowedAmount, TotalAmount) :-
TotalAmount is BorrowedAmount + (BorrowedAmount * 0.10).
% Define the predicate to calculate Janeth's remaining balance after making monthly payments for 12 months
remaining_balance(BorrowedAmount, MonthlyPayment, Months, RemainingBalance) :-
TotalAmount is BorrowedAmount + (BorrowedAmount * 0.10),
RemainingBalance is TotalAmount - (MonthlyPayment * Months).
% Query predicate to run the program and get the result
query(RemainingBalance) :-
remaining_balance(2000, 165, 12, RemainingBalance).
% Uncomment the following line to run the query
% ?- query(RemainingBalance).
%query(RemainingBalance).