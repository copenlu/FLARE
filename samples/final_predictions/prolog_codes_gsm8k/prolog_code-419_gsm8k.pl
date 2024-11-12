% Predicate to calculate total payment made in May
total_payment_may(Employees, PaymentMay) :-
PaymentMay is Employees * 15 * 40 * 4.
% Predicate to calculate the number of employees whose contracts expired in June
expired_employees(Employees, Expired) :-
Expired is Employees // 4.
% Predicate to calculate total payment made in June
total_payment_june(Employees, Expired, PaymentJune) :-
RemainingEmployees is Employees - Expired,
PaymentJune is RemainingEmployees * 15 * 40 * 4.
% Predicate to calculate the total payment made in May and June
total_payment(Employees, PaymentMay, Expired, PaymentJune, TotalPayment) :-
TotalPayment is PaymentMay + PaymentJune.
% Main predicate to calculate the total payment made in May and June
calculate_total_payment(Employees, TotalPayment) :-
total_payment_may(Employees, PaymentMay),
expired_employees(Employees, Expired),
total_payment_june(Employees, Expired, PaymentJune),
total_payment(Employees, PaymentMay, Expired, PaymentJune, TotalPayment).
% Query to find out the total amount of money paid to the employees in May and June
query(TotalPayment) :-
calculate_total_payment(40, TotalPayment).
% Uncomment the following line to run the query
% ?- query(TotalPayment).
%query(TotalPayment).