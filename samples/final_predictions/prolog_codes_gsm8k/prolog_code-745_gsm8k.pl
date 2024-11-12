% Define the number of students' cars and windows per student's car
student_cars(64).
windows_per_student_car(4).
% Define the number of teachers' cars and windows per teacher's car
teacher_cars(32).
windows_per_teacher_car(2).
% Calculate the total number of windows in students' cars
student_car_windows(TotalStudentWindows) :-
student_cars(Students),
windows_per_student_car(WindowsPerStudent),
TotalStudentWindows is Students * WindowsPerStudent.
% Calculate the total number of windows in teachers' cars
teacher_car_windows(TotalTeacherWindows) :-
teacher_cars(Teachers),
windows_per_teacher_car(WindowsPerTeacher),
TotalTeacherWindows is Teachers * WindowsPerTeacher.
% Calculate the total number of windows smashed by Hannah
windows_smashed(TotalWindowsSmashed) :-
student_car_windows(StudentWindows),
teacher_car_windows(TeacherWindows),
TotalWindowsSmashed is (1/4 * StudentWindows) + (3/4 * TeacherWindows).
% Query predicate to find the total number of windows smashed by Hannah
query(TotalWindowsSmashed) :-
windows_smashed(TotalWindowsSmashed).
% Uncomment the line below to run the query
% query(TotalWindowsSmashed).
%query(TotalWindowsSmashed).