% Define the rule to calculate Tim's new salary after a 5% raise
new_salary(CurrentSalary, NewSalary) :-
NewSalary is CurrentSalary + (0.05 * CurrentSalary).
% Define the rule to calculate the bonus amount
calculate_bonus(CurrentSalary, Bonus) :-
Bonus is 0.5 * CurrentSalary.
% Define the rule to calculate Tim's total monthly income
total_monthly_income(NewSalary, Bonus, TotalIncome) :-
TotalIncome is NewSalary + Bonus.
% Define the rule to calculate Tim's annual income
annual_income(TotalIncome, AnnualIncome) :-
AnnualIncome is TotalIncome * 12.
% Calculate Tim's annual income
calculate_annual_income(CurrentSalary, AnnualIncome) :-
new_salary(CurrentSalary, NewSalary),
calculate_bonus(CurrentSalary, Bonus),
total_monthly_income(NewSalary, Bonus, TotalIncome),
annual_income(TotalIncome, AnnualIncome).
% Query to find Tim's annual income with a monthly salary of $20000
query(AnnualIncome) :-
calculate_annual_income(20000, AnnualIncome).
% Uncomment the following line to run the query
% ?- query(AnnualIncome).
%query(AnnualIncome).