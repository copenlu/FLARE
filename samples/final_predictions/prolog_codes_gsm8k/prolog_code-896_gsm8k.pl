% Define the predicate to calculate Ella's hourly rate
% Params: TotalAmountEarned, NumHoursWorked, HourlyRate
hourly_rate(TotalAmountEarned, NumHoursWorked, HourlyRate) :-
HourlyRate is TotalAmountEarned / NumHoursWorked.
% Define the predicate to calculate Ella's total earnings after a certain number of hours
% Params: HourlyRate, NumHoursFutureWork, TotalEarnings
total_earnings(HourlyRate, NumHoursFutureWork, TotalEarnings) :-
TotalEarnings is HourlyRate * NumHoursFutureWork.
% Constants
TotalAmountEarned = 33,  % Total amount earned in dollars
NumHoursWorked = 3,  % Number of hours worked
NumHoursFutureWork = 12,  % Number of hours for future work
% Calculate Ella's hourly rate
hourly_rate(TotalAmountEarned, NumHoursWorked, HourlyRate),
% Calculate Ella's total earnings after 12 hours
total_earnings(HourlyRate, NumHoursFutureWork, TotalEarnings).
% Query predicate to get Ella's total earnings after 12 hours
query(TotalEarnings) :-
total_earnings(HourlyRate, NumHoursFutureWork, TotalEarnings).
% Uncomment the following line to run the query
% query(TotalEarnings).
%query(TotalEarnings).