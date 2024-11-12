% Define regular earnings
regular_earnings(Hours, RegularEarnings) :-
Hours =< 40,
RegularEarnings is Hours * 10.
% Define overtime earnings
overtime_earnings(Hours, OvertimeEarnings) :-
Hours > 40,
OvertimeHours is Hours - 40,
OvertimeEarnings is OvertimeHours * 10 * 1.2.
% Define total earnings
total_earnings(RegularEarnings, OvertimeEarnings, TotalEarnings) :-
TotalEarnings is RegularEarnings + OvertimeEarnings.
% Calculate Eliza's total earnings for the week
elizas_earnings(45, TotalEarnings) :-
regular_earnings(40, RegularEarnings),
overtime_earnings(45, OvertimeEarnings),
total_earnings(RegularEarnings, OvertimeEarnings, TotalEarnings).
% Query to find Eliza's earnings for the week
query(TotalEarnings) :-
elizas_earnings(45, TotalEarnings).
% Uncomment the following line to run the query
% ?- query(TotalEarnings).
%query(TotalEarnings).