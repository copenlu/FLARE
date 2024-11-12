% Define the temperature increase per log
temperature_increase_per_log(5).
% Calculate the number of logs needed to prevent freezing
calculate_logs(DayTemp, TempDrop, MinTemp, LogsNeeded) :-
NightTemp is DayTemp - TempDrop,
TempIncreaseNeeded is MinTemp - NightTemp,
temperature_increase_per_log(TempIncreasePerLog),
LogsNeeded is TempIncreaseNeeded / TempIncreasePerLog.
% Query to calculate the number of logs Carson needs to burn
query(LogsNeeded) :-
calculate_logs(45, 33, 32, LogsNeeded).
% Uncomment the following line to run the query and calculate the number of logs needed
% ?- query(LogsNeeded).
%query(LogsNeeded).