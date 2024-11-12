% Define Kalinda's rate of adding puzzle pieces per minute
kalinda_rate(4).
% Define Mom's rate of adding puzzle pieces per minute
mom_rate(Rate) :-
kalinda_rate(KalindaRate),
Rate is KalindaRate / 2.
% Define the combined rate of Kalinda and Mom
combined_rate(CombinedRate) :-
kalinda_rate(KalindaRate),
mom_rate(MomRate),
CombinedRate is KalindaRate + MomRate.
% Define the total time in minutes to complete the puzzle
total_time(TotalTime) :-
combined_rate(CombinedRate),
TotalTime is 360 / CombinedRate.
% Define the conversion from minutes to hours
hours(TimeInHours) :-
TimeInHours is TotalTime / 60.
% Query predicate to run the program and get the result
query(TimeInHours) :-
total_time(TotalTime),
hours(TimeInHours).
% Uncomment the following line to run the query
% ?- query(TimeInHours).
%query(TimeInHours).