% Define the rule to calculate the number of hours each painter worked
hours_per_painter(TotalDaysWorked, HoursPerPainter) :-
TotalHoursWorked is TotalDaysWorked * 3 / 8,  % Calculate total hours worked by the team
HoursPerPainter is TotalHoursWorked / 4.      % Calculate hours per painter
% Query to find the number of hours each painter worked over 3 weeks
query_hours_per_painter(HoursPerPainter) :-
hours_per_painter(21, HoursPerPainter).  % Assuming 21 days worked over 3 weeks
% Define a predicate that returns the correct numerical answer when queried
query(HoursPerPainter) :-
query_hours_per_painter(HoursPerPainter).
% Uncomment the following line to run the query
% ?- query(HoursPerPainter).
%query(HoursPerPainter).