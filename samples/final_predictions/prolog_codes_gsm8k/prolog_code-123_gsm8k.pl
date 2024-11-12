% Calculate total sheets used per week
sheets_used_per_week(PadsPerWeek, SheetsPerPad, TotalSheetsPerWeek) :-
TotalSheetsPerWeek is PadsPerWeek * SheetsPerPad.
% Calculate total sheets used per month
sheets_used_per_month(TotalSheetsPerWeek, WeeksInMonth, TotalSheetsPerMonth) :-
TotalSheetsPerMonth is TotalSheetsPerWeek * WeeksInMonth.
% Given values
PadsPerWeek = 2,  % Assumed atom/predicate
SheetsPerPad = 30,  % Assumed atom/predicate
WeeksInMonth = 4.  % Assumed atom/predicate
% Calculate total sheets used in a month
query(TotalSheetsPerMonth) :-
sheets_used_per_week(PadsPerWeek, SheetsPerPad, TotalSheetsPerWeek),
sheets_used_per_month(TotalSheetsPerWeek, WeeksInMonth, TotalSheetsPerMonth).
% Uncomment the following line to run the query and calculate the total sheets used in a month
% ?- query(TotalSheetsPerMonth).
%query(TotalSheetsPerMonth).