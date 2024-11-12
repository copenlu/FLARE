% Calculate Adrien's initial salary
adrien_initial_salary(AdrienSalary) :-
AdrienSalary is 40000 / 1.4.
% Calculate Lylah's initial salary
lylah_initial_salary(LylahSalary, AdrienSalary) :-
LylahSalary is 0.7 * AdrienSalary.
% Calculate Adrien's salary four years later
adrien_salary_four_years_later(AdrienSalary, NewAdrienSalary) :-
NewAdrienSalary is AdrienSalary * 1.4.
% Calculate Lylah's salary four years later
lylah_salary_four_years_later(LylahSalary, NewLylahSalary) :-
NewLylahSalary is LylahSalary * 1.4.
% Calculate total salary four years later
total_salary_four_years_later(TotalSalary, NewAdrienSalary, NewLylahSalary) :-
TotalSalary is NewAdrienSalary + NewLylahSalary.
% Query to calculate the total salary Adrien and Lylah were receiving four years later
query(TotalSalary) :-
adrien_initial_salary(AdrienInitial),
lylah_initial_salary(LylahInitial, AdrienInitial),
adrien_salary_four_years_later(AdrienInitial, NewAdrien),
lylah_salary_four_years_later(LylahInitial, NewLylah),
total_salary_four_years_later(TotalSalary, NewAdrien, NewLylah).
% Uncomment the following line to run the query and calculate the total salary four years later
% ?- query(TotalSalary).
%query(TotalSalary).