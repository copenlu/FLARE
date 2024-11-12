% Define the total number of students in Miss Susan's class
total_students(20).
% Define the number of students good at math only
math_only_students(5).
% Define the number of students performing well in English only
english_only_students(8).
% Calculate the number of students good at both math and English
math_and_english_students(TotalStudents, MathOnlyStudents, EnglishOnlyStudents, MathAndEnglishStudents) :-
MathAndEnglishStudents is TotalStudents - (MathOnlyStudents + EnglishOnlyStudents).
% Calculate the total number of students who are good at math
students_good_at_math(MathOnlyStudents, MathAndEnglishStudents, StudentsGoodAtMath) :-
StudentsGoodAtMath is MathOnlyStudents + MathAndEnglishStudents.
% Query predicate to find the number of students good at math in Miss Susan's class
query(StudentsGoodAtMath) :-
total_students(TotalStudents),
math_only_students(MathOnlyStudents),
english_only_students(EnglishOnlyStudents),
math_and_english_students(TotalStudents, MathOnlyStudents, EnglishOnlyStudents, MathAndEnglishStudents),
students_good_at_math(MathOnlyStudents, MathAndEnglishStudents, StudentsGoodAtMath).
% Uncomment the line below to run the query
% query(StudentsGoodAtMath).
%query(StudentsGoodAtMath).