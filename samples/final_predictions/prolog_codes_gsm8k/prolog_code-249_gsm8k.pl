% Define the total_minutes_used predicate to calculate the total minutes used by Jason
total_minutes_used(TotalMinutesUsed) :-
DailyCallDuration is 15,  % Daily call duration with boss
ExtraMinutes is 300,  % Extra minutes used for other calls
TotalMinutesUsed is (DailyCallDuration * 30) + ExtraMinutes.  % Total minutes used in the month
% Define the minutes_left predicate to calculate the remaining minutes for Jason
minutes_left(MonthlyPlan, TotalMinutesUsed, MinutesLeft) :-
MinutesLeft is MonthlyPlan - TotalMinutesUsed.
% Calculate the total minutes used and the minutes left for Jason
query(MinutesLeft) :-
MonthlyPlan = 1000,  % Assumed atom: Monthly plan of 1000 minutes
total_minutes_used(TotalMinutesUsed),
minutes_left(MonthlyPlan, TotalMinutesUsed, MinutesLeft).
% Uncomment the following line to run the query
% ?- query(MinutesLeft).
%query(MinutesLeft).