% Define the number of students and teachers per class
students_per_class(25).
teachers_per_class(3).
% Define the number of trees planted by students and teachers
trees_planted_by_student(1).
trees_planted_by_teacher(2).
% Calculate the total number of trees planted in each class
total_trees_per_class(TotalTrees) :-
students_per_class(Students),
teachers_per_class(Teachers),
trees_planted_by_student(StudentTrees),
trees_planted_by_teacher(TeacherTrees),
TotalTrees is Students * StudentTrees + Teachers * TeacherTrees.
% Calculate the total number of trees planted in all classes
total_trees_planted(TotalTrees) :-
total_trees_per_class(TreesPerClass),
TotalTrees is TreesPerClass * 40.
% Query to calculate the total number of trees planted at the end of the campaign
query(TotalTrees) :-
total_trees_planted(TotalTrees).
% Uncomment the following line to run the query and calculate the total number of trees planted
% ?- query(TotalTrees).
%query(TotalTrees).