% Define initial values
initial_employees(200).
new_employees_per_month(20).
salary_per_employee(4000).
months(3).
% Calculate total amount paid to employees after a given number of months
total_amount_paid(TotalAmount) :-
initial_employees(Initial),
new_employees_per_month(NewPerMonth),
salary_per_employee(Salary),
months(Months),
TotalEmployees is Initial + (NewPerMonth * Months),
TotalAmount is TotalEmployees * Salary * Months.
% Query to calculate the total amount paid to employees after three months
query(TotalAmount) :-
total_amount_paid(TotalAmount).
% Uncomment the following line to run the query and calculate the total amount paid
% ?- query(TotalAmount).
%query(TotalAmount).