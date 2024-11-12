% Define time needed for each homework subject
time_needed(math, 20).
time_needed(history, 20).
% Calculate total time needed for homework
total_homework_time(TotalTime) :-
time_needed(math, MathTime),
time_needed(history, HistoryTime),
TotalTime is MathTime + ReadingTime + HistoryTime.
% Calculate remaining time for a nap
calculate_nap_time(TimeBeforeDinner, NapTime) :-
total_homework_time(TotalHomeworkTime),
NapTime is TimeBeforeDinner - TotalHomeworkTime.
% Query to calculate how many minutes John has left for a nap
query(NapTime) :-
TimeBeforeDinner = 3 * 60,  % Assumed 3 hours before dinner in minutes
calculate_nap_time(TimeBeforeDinner, NapTime).
% Uncomment the following line to run the query and calculate the remaining time for a nap
% ?- query(NapTime).
%query(NapTime).