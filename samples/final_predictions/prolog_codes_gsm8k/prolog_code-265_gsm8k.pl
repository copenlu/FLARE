% Predicate to calculate the total fine for overdue books
% Params: NumOverdueBooks, FinePerBook, TotalFine
calculate_total_fine(NumOverdueBooks, FinePerBook, TotalFine) :-
TotalFine is NumOverdueBooks * FinePerBook.
% Predicate to check if there is at least one book over a week overdue
% Params: NumBooksOverWeek, FlatFee
check_overdue_week(NumBooksOverWeek, FlatFee) :-
(NumBooksOverWeek > 0 -> FlatFee = 2.0 ; FlatFee = 0).
% Predicate to calculate the total amount Nancy has to pay
% Params: TotalFine, FlatFee, TotalAmount
calculate_total_amount(TotalFine, FlatFee, TotalAmount) :-
TotalAmount is TotalFine + FlatFee.
% Main predicate to compute the total amount Nancy has to pay
% Params: TotalAmount
calculate_payment(TotalAmount) :-
% Constants
NumOverdueBooks = 8,
FinePerBook = 0.50,  % In dollars
NumBooksOverWeek = 1,  % Assuming at least one book is over a week overdue
% Calculate total fine for overdue books
calculate_total_fine(NumOverdueBooks, FinePerBook, TotalFine),
% Check if there is at least one book over a week overdue and calculate flat fee
check_overdue_week(NumBooksOverWeek, FlatFee),
% Calculate total amount Nancy has to pay
calculate_total_amount(TotalFine, FlatFee, TotalAmount).
% Query predicate to get the total amount Nancy has to pay
query(TotalAmount) :-
calculate_payment(TotalAmount).
% Uncomment the following line to run the query
% query(TotalAmount).
%query(TotalAmount).