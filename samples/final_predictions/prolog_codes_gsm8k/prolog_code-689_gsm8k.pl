% Define the number of good, bad, and neutral days recorded so far
good_days_recorded(12).
bad_days_recorded(8).
neutral_days_recorded(10).
% Calculate the number of good days left in the month
calculate_good_days_left(GoodDaysLeft) :-
good_days_recorded(GoodRecorded),
bad_days_recorded(BadRecorded),
neutral_days_recorded(NeutralRecorded),
TotalDays = 30,
DaysLeft is TotalDays - GoodRecorded - BadRecorded - NeutralRecorded,
DaysLeftInSet is DaysLeft mod 8,
GoodDaysLeftInSet is 8 - DaysLeftInSet,
GoodDaysLeft is GoodDaysLeftInSet + 3. % Next 3 days are predicted to be good
% Query to find out the number of good days left
query(GoodDaysLeft) :-
calculate_good_days_left(GoodDaysLeft).
% Uncomment the following line to run the query and calculate the number of good days left
% ?- query(GoodDaysLeft).
%query(GoodDaysLeft).