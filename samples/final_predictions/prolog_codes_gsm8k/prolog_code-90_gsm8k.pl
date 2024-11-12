% Define Sylvie's initial monthly salary
initial_salary(600).
% Calculate annual salary after a given number of years
annual_salary_after_years(0, _, AnnualSalary) :- initial_salary(Initial), AnnualSalary is Initial * 12.
annual_salary_after_years(Years, Initial, AnnualSalary) :-
NewYears is Years - 1,
annual_salary_after_years(NewYears, Initial, PrevAnnualSalary),
Increment is 0.1 * Initial,
AnnualSalary is PrevAnnualSalary + Increment.
% Calculate Sylvie's annual salary after 3 more years of service
sylvies_salary_after_3_years(Salary) :-
initial_salary(Initial),
annual_salary_after_years(3, Initial, Salary).
% Query to calculate Sylvie's annual salary after 3 more years of service
query(Salary) :-
sylvies_salary_after_3_years(Salary).
% Uncomment the following line to run the query and calculate Sylvie's annual salary after 3 more years
% ?- query(Salary).
%query(Salary).