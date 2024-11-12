% Define a predicate to calculate the total time needed for all eligible students to try the escape room
total_time_to_try_escape_room(StudentsPerGrade, StudentsPerGroup, TimePerGroup, TotalTime) :-
TotalStudents is StudentsPerGrade * 4, % Considering grades 4-7
TotalGroups is ceil(TotalStudents / StudentsPerGroup),
TotalTime is TotalGroups * TimePerGroup.
% Define a query predicate to find out the total time needed for all eligible students to try the escape room
query(TotalTime) :-
% Given 10 students per grade, 8 students per group, and 45 minutes per group
total_time_to_try_escape_room(10, 8, 45, TotalTime).
% Uncomment the line below to run the query in SWI-Prolog
% query(TotalTime).
%query(TotalTime).