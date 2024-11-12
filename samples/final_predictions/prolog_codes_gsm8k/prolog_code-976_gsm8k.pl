% Define the number of reports Vince can staple in 15 minutes
reports_per_interval(30).
% Define the total number of reports Vince staples from 8:00 AM to 11:00 PM
total_reports_stapled(TotalReports) :-
reports_per_interval(ReportsPerInterval),
TotalHours is 15,
TotalMinutes is TotalHours * 60,
TotalIntervals is TotalMinutes / 15,
TotalReports is ReportsPerInterval * TotalIntervals.
% Predicate to encapsulate the entire calculation and output the total number of reports Vince staples
calculate_total_reports_stapled(TotalReports) :-
total_reports_stapled(TotalReports).
% Query to find the total number of reports Vince staples
query(TotalReports) :-
calculate_total_reports_stapled(TotalReports).
% Uncomment the following line to run the query
% ?- query(TotalReports).
%query(TotalReports).