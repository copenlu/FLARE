% Define a rule to calculate Lloyd's earnings for the first two weeks
calculate_earnings(Week1Hours, Week2Hours, HourlyRate, TotalEarnings) :-
TotalHours is Week1Hours + Week2Hours,
TotalEarnings is TotalHours * HourlyRate.
% Define a query predicate to find out how much Lloyd earned for the first two weeks
query(TotalEarnings) :-
% Given values: 5 hours in week 1, 8 hours in week 2, $10 hourly rate
calculate_earnings(5, 8, 10, TotalEarnings).
% Uncomment the line below to run the query in SWI-Prolog
% query(TotalEarnings).
%query(TotalEarnings).