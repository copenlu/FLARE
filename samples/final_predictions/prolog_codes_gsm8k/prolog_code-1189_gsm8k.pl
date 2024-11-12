% Define the total number of reports received in the week
total_reports_received_in_week(MonTueTotal, ThuFriTotal, TotalWeekReports) :-
TotalWeekReports is MonTueTotal + ThuFriTotal.
% Define the number of reports received on Wednesday
reports_received_on_wednesday(TotalWeekReports, MonTueTotal, ThuFriTotal, WedReports) :-
WedReports is TotalWeekReports - MonTueTotal - ThuFriTotal.
% Main predicate to compute the number of reports received on Wednesday
calculate_reports_on_wednesday(WedReports) :-
% Constants
MonTueTotal = 1907,
ThuFriTotal = 2136,
TotalWeekReports = 5168,
% Calculate the number of reports received on Wednesday
reports_received_on_wednesday(TotalWeekReports, MonTueTotal, ThuFriTotal, WedReports).
% Query predicate to get the number of reports received on Wednesday
query(WedReports) :-
calculate_reports_on_wednesday(WedReports).
% Uncomment the following line to run the query
% query(WedReports).
%query(WedReports).