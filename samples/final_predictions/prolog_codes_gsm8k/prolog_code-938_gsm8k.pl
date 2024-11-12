% Define the rule to calculate the total hours worked over three days
total_hours_worked(TotalHours) :-
hours_worked_tuesday(TuesdayHours),
hours_worked_wednesday(WednesdayHours),
hours_worked_thursday(ThursdayHours),
TotalHours is TuesdayHours + WednesdayHours + ThursdayHours.
% Define the hours worked on Tuesday
hours_worked_tuesday(5).
% Define the hours worked on Wednesday (twice the time worked on Tuesday)
hours_worked_wednesday(WednesdayHours) :-
hours_worked_tuesday(TuesdayHours),
WednesdayHours is 2 * TuesdayHours.
% Define the hours worked on Thursday (2 hours less than Wednesday)
hours_worked_thursday(ThursdayHours) :-
hours_worked_wednesday(WednesdayHours),
ThursdayHours is WednesdayHours - 2.
% Query to find the total hours worked over three days
query(TotalHours) :-
total_hours_worked(TotalHours).
% Uncomment the line below to run the query
% ?- query(TotalHours).
%query(TotalHours).