% Define the time taken to download a portion of the file
time_to_download(Portion, Time) :-
Time is Portion / 2.
% Define the total time taken to download the entire file
total_time_to_download(InterruptionTime, RemainingPortionTime, TotalTime) :-
TotalTime is InterruptionTime + RemainingPortionTime.
% Calculate the time taken for the interruption and restart
InterruptionTime is 20.
% Calculate the time needed to download the remaining 60% of the file
RemainingPortionTime is time_to_download(60/100 * 200, Time).
% Calculate the total time taken to download the file
TotalTime is total_time_to_download(InterruptionTime, RemainingPortionTime, TotalTime).
% Query to find the total time taken to download the file
query(TotalTime) :-
TotalTime.
% Uncomment the following line to run the query
% ?- query(TotalTime).
%query(TotalTime).