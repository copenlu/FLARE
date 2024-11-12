% Define a predicate to calculate Jen's total earnings for April
total_earnings(HoursPerDay, DaysPerWeek, HourlyRate, WeeksInMonth, AttendanceBonus, TotalEarnings) :-
% Calculate the weekly earnings without the attendance bonus
WeeklyEarnings is HoursPerDay * DaysPerWeek * HourlyRate,
% Calculate the total earnings for the month without the attendance bonus
TotalEarningsWithoutBonus is WeeklyEarnings * WeeksInMonth,
% Add the attendance bonus if Jen has perfect attendance
(AttendanceBonus =:= 0 -> TotalEarnings = TotalEarningsWithoutBonus ; TotalEarnings is TotalEarningsWithoutBonus + AttendanceBonus).
% Define a query predicate to find out Jen's total earnings for April
query(TotalEarnings) :-
% Jen works 7.5 hours/day, 6 days/week, $1.5 hourly rate, 4 weeks in April, $10 attendance bonus
total_earnings(7.5, 6, 1.5, 4, 10, TotalEarnings).
% Uncomment the line below to run the query in SWI-Prolog
% query(TotalEarnings).
%query(TotalEarnings).