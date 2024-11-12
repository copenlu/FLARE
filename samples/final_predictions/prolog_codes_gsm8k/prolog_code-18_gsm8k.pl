% Define earnings as a teacher
earnings_teacher(HoursPerWeek, WeeksPerYear, HourlyRate, Earnings) :-
Earnings is HoursPerWeek * WeeksPerYear * HourlyRate.
% Define earnings as a coach
earnings_coach(HoursPerWeek, WeeksPerYear, HourlyRate, Earnings) :-
Earnings is HoursPerWeek * WeeksPerYear * HourlyRate.
% Define total annual salary
total_annual_salary(TeacherEarnings, CoachEarnings, TotalSalary) :-
TotalSalary is TeacherEarnings + CoachEarnings.
% Calculate Jill's annual salary
jill_annual_salary(TotalSalary) :-
earnings_teacher(35, 50, 20, TeacherEarnings),  % Assumed atom/predicate
earnings_coach(15, 50, 30, CoachEarnings),      % Assumed atom/predicate
total_annual_salary(TeacherEarnings, CoachEarnings, TotalSalary).
% Query to find Jill's annual salary
query(TotalSalary) :-
jill_annual_salary(TotalSalary).
% Uncomment the following line to run the query
% ?- query(TotalSalary).
%query(TotalSalary).