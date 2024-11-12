% Define the number of students who passed in each grade
passed(third_grade, 340).
passed(fourth_grade, 40).
passed(fifth_grade, PassRateFifthGrade) :- passed(fourth_grade, FourthGradePass), PassRateFifthGrade is 2 * FourthGradePass.
% Define the total number of students in each grade
total_students(third_grade, 500).
total_students(fourth_grade, 100).
total_students(fifth_grade, 400).
% Calculate the total number of students who passed across all grades
total_passed(TotalPassed) :-
passed(third_grade, PassedThird),
passed(fourth_grade, PassedFourth),
passed(fifth_grade, PassedFifth),
TotalPassed is PassedThird + PassedFourth + PassedFifth.
% Calculate the overall pass rate for the school
overall_pass_rate(OverallPassRate) :-
total_passed(TotalPassed),
total_students(third_grade, TotalThird),
total_students(fourth_grade, TotalFourth),
total_students(fifth_grade, TotalFifth),
TotalStudents is TotalThird + TotalFourth + TotalFifth,
OverallPassRate is TotalPassed / TotalStudents.
% Query to calculate the overall pass rate for the school
query(OverallPassRate) :-
overall_pass_rate(OverallPassRate).
% Uncomment the following line to run the query and calculate the overall pass rate
% ?- query(OverallPassRate).
%query(OverallPassRate).