% Predicate to calculate the total amount to be repaid, including interest
total_amount_borrowed(Principal, Rate, Months, Total) :-
Interest is Principal * Rate / 100 * Months,  % Calculate the total interest accrued
Total is Principal + Interest.               % Calculate the total amount to be repaid
% Predicate to calculate the equal monthly installment
monthly_payment(Total, Months, Payment) :-
Payment is Total / Months.  % Calculate the monthly payment amount
% Main predicate to calculate the monthly payment amount for Karan's loan
karan_loan_payment(Payment) :-
total_amount_borrowed(3650, 10, 5, Total),  % Calculate the total amount to be repaid
monthly_payment(Total, 5, Payment).         % Calculate the monthly payment amount
% Query predicate to find out the monthly payment amount for Karan's loan
query(Payment) :-
karan_loan_payment(Payment).
% Uncomment the following line to run the query
% ?- query(Payment).
%query(Payment).