% Define the total number of boys and girls
boys(12).
girls(12).
% Calculate the number of girls on varsity (one-third of total girls)
girls_on_varsity(GirlsOnVarsity) :-
girls(TotalGirls),
GirlsOnVarsity is TotalGirls // 3.
% Calculate the number of boys on varsity (one-fourth of total boys)
boys_on_varsity(BoysOnVarsity) :-
boys(TotalBoys),
BoysOnVarsity is TotalBoys // 4.
% Calculate the total number of students on varsity
total_students_on_varsity(TotalStudentsOnVarsity) :-
girls_on_varsity(GirlsOnVarsity),
boys_on_varsity(BoysOnVarsity),
TotalStudentsOnVarsity is GirlsOnVarsity + BoysOnVarsity.
% Calculate the total number of students in the class
total_students(TotalStudents) :-
boys(TotalBoys),
girls(TotalGirls),
TotalStudents is TotalBoys + TotalGirls.
% Calculate the number of students not on varsity
students_not_on_varsity(StudentsNotOnVarsity) :-
total_students(TotalStudents),
total_students_on_varsity(TotalStudentsOnVarsity),
StudentsNotOnVarsity is TotalStudents - TotalStudentsOnVarsity.
% Query to find the number of students not on varsity
query(NotOnVarsity) :-
students_not_on_varsity(NotOnVarsity).
% Uncomment the following line to run the query
% ?- query(NotOnVarsity).
%query(NotOnVarsity).