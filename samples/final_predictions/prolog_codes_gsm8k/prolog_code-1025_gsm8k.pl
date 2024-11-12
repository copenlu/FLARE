% Define time taken for rounds per inpatient and appointments
time_for_rounds_per_inpatient(20). % in minutes
time_for_appointment(30). % in minutes
% Calculate total time spent for rounds and appointments
total_time_spent(TotalTime) :-
time_for_rounds_per_inpatient(RoundsTime),
time_for_appointment(AppointmentTime),
TotalRoundsTime is 9 * RoundsTime, % 9 inpatients
TotalAppointmentsTime is 10 * AppointmentTime, % 10 appointments
TotalTime is (TotalRoundsTime + TotalAppointmentsTime) / 60. % Convert to hours
% Calculate time left for updating records
time_left_for_records(TimeLeft) :-
total_time_spent(TotalTime),
TotalTimeSpent is TotalTime,
TotalTimeAvailable is 9, % Total hours Doctor Jones has at the clinic
TimeLeft is TotalTimeAvailable - TotalTimeSpent.
% Query predicate to find the time left for updating records
query(TimeLeft) :-
time_left_for_records(TimeLeft).
% Uncomment the line below to run the query
% query(TimeLeft).
%query(TimeLeft).