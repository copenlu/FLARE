% Define the rule for calculating total sleep time
total_sleep_time('22:00', '06:00', TotalSleepTime) :-
TotalSleepTime is 8 * 60. % 8 hours in minutes
% Define the rule for calculating total sleep on bed
total_sleep_on_bed(SleepStart, SleepEnd, SleepwalkStart, SleepwalkEnd, WakeUpEarly, TotalSleepOnBed) :-
total_sleep_time(SleepStart, SleepEnd, TotalSleepTime),
SleepwalkDuration is (SleepwalkEnd - SleepwalkStart),
TotalSleepOnBed is TotalSleepTime - SleepwalkDuration - WakeUpEarly.
% Calculate the total sleep on bed for Kim
% Kim slept from 10 p.m. to 6 a.m., sleepwalked from 2:15 to 2:38 a.m., and woke up 5 minutes early
query(TotalSleepOnBed) :-
total_sleep_on_bed('22:00', '06:00', 135, 158, 5, TotalSleepOnBed).
% Uncomment the following line to run the query
% ?- query(TotalSleepOnBed).
%query(TotalSleepOnBed).