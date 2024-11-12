% Define the rule to calculate the total number of students
calculate_students(StudentsWithoutDesktop, TotalStudents) :-
TotalStudents is StudentsWithoutDesktop * 4.
% Given that 20 students do not have desktop computers
students_without_desktop(20).
% Calculate the total number of students
:- students_without_desktop(StudentsWithoutDesktop),
calculate_students(StudentsWithoutDesktop, TotalStudents).
% Query to get the total number of students
query(TotalStudents) :-
TotalStudents.
% Uncomment the following line to run the query and get the total number of students
% ?- query(TotalStudents).
%query(TotalStudents).