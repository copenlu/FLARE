% Calculate the total time math teachers spend sleeping
calculate_math_teachers_sleep_time(TotalTeachers, TotalSleepTime) :-
HistoryTeachers is round(0.6 * TotalTeachers),  % Assumed percentage of history teachers
MathTeachers is TotalTeachers - HistoryTeachers,
TotalSleepTime is MathTeachers * 6.
% Query to calculate the total time math teachers spend sleeping
query(TotalSleepTime) :-
calculate_math_teachers_sleep_time(150, TotalSleepTime).  % Assumed total number of teachers
% Uncomment the following line to run the query and calculate the total sleep time for math teachers
% ?- query(TotalSleepTime).
%query(TotalSleepTime).