% Define the net_income_job_a predicate to calculate net income for Job A
net_income_job_a(NetIncome) :-
GrossIncome is 15 * 2000,  % Hourly rate * hours worked per year
TaxDeduction is GrossIncome * 0.20,  % Total tax deduction
NetIncome is GrossIncome - TaxDeduction.  % Net income after tax deduction
% Define the net_income_job_b predicate to calculate net income for Job B
net_income_job_b(NetIncome) :-
NetIncomeAfterPropertyTax is 42000 - 6000,  % Net income after property tax deduction
NetIncomeSubjectToTax is NetIncomeAfterPropertyTax,  % Net income subject to income tax
IncomeTaxDeduction is NetIncomeSubjectToTax * 0.10,  % Income tax deduction
NetIncome is NetIncomeAfterPropertyTax - IncomeTaxDeduction.  % Final net income after income tax deduction
% Define the difference_in_income predicate to calculate the difference in net income between the two jobs
difference_in_income(Difference) :-
net_income_job_a(NetIncomeA),  % Calculate net income for Job A
net_income_job_b(NetIncomeB),  % Calculate net income for Job B
Difference is NetIncomeB - NetIncomeA.  % Calculate the difference in net income
% Query predicate to run the program and get the result
query(Difference) :-
difference_in_income(Difference).
% Uncomment the following line to run the query
% ?- query(Difference).
%query(Difference).