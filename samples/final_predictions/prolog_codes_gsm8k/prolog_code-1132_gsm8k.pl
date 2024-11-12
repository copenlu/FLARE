% Define the rule to calculate the amount Lauren saves from each paycheck
calculate_savings(Salary, Savings) :-
Savings is 0.2 * Salary.
% Define the rule to calculate the total savings per year
calculate_total_savings_per_year(Savings, TotalSavingsPerYear) :-
TotalSavingsPerYear is Savings * 12. % Assuming 12 paychecks in a year
% Define the rule to calculate the retirement savings over 20 years
calculate_retirement_savings(TotalSavingsPerYear, Years, RetirementSavings) :-
RetirementSavings is TotalSavingsPerYear * Years.
% Define the rule to calculate the annual expenses during retirement
calculate_annual_expenses_during_retirement(Salary, AnnualExpenses) :-
AnnualExpenses is 0.4 * Salary.
% Define the rule to calculate the years Lauren needs to work
calculate_years_to_work(RetirementSavings, AnnualExpenses, YearsToWork) :-
YearsToWork is RetirementSavings / (RetirementSavings - AnnualExpenses).
% Query to find out how many more years Lauren needs to work
query(YearsToWork) :-
calculate_savings(100000, Savings),
calculate_total_savings_per_year(Savings, TotalSavingsPerYear),
calculate_retirement_savings(TotalSavingsPerYear, 20, RetirementSavings),
calculate_annual_expenses_during_retirement(100000, AnnualExpenses),
calculate_years_to_work(RetirementSavings, AnnualExpenses, YearsToWork).
% Uncomment the following line to run the query
% ?- query(YearsToWork).
%query(YearsToWork).