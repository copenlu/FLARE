calculate_days_to_finish(TotalPages, PagesPerDay, DeadlineDays, DaysBeforeDeadline) :-
TotalDaysToFinish is TotalPages / PagesPerDay,
DaysBeforeDeadline is DeadlineDays - TotalDaysToFinish.
query(DaysBeforeDeadline) :-
TotalPages = 200,  % Assumed total number of pages in the book
calculate_days_to_finish(TotalPages, PagesPerDay, DeadlineDays, DaysBeforeDeadline).
% Uncomment the following line to run the query and calculate the days before the deadline
% ?- query(DaysBeforeDeadline).
%query(DaysBeforeDeadline).