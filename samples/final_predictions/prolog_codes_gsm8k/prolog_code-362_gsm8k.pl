% Define the time spent on boating
time_boating(6).
% Define the time spent swimming as half the time spent boating
time_swimming(TimeSwimming) :-
time_boating(BoatingTime),
TimeSwimming is BoatingTime / 2.
% Define the time spent watching shows (3 shows, each 2 hours)
time_watching_shows(6).
% Define the time spent sightseeing as 40% of the total vacation time
time_sightseeing(TimeSightseeing, TotalTime) :-
TimeSightseeing is 0.4 * TotalTime.
% Calculate the total vacation time by summing the time spent on each activity
total_vacation_time(TotalTime) :-
time_boating(BoatingTime),
time_swimming(SwimmingTime),
time_watching_shows(ShowsTime),
TotalTime is BoatingTime + SwimmingTime + ShowsTime + TotalTime.
% Calculate the time spent sightseeing based on the total vacation time
calculate_sightseeing_time(TimeSightseeing) :-
total_vacation_time(TotalTime),
time_sightseeing(TimeSightseeing, TotalTime).
% Query predicate to run the program and get the result
query(TimeSightseeing) :-
calculate_sightseeing_time(TimeSightseeing).
% Uncomment the following line to run the query
% ?- query(TimeSightseeing).
%query(TimeSightseeing).