% Define the base case where there are 10 students at the beginning of the year
students_on_campus(0, 10).
% Define the recursive rule for doubling the number of students at the end of each month
students_on_campus(Month, TotalStudents) :-
Month > 0,
PrevMonth is Month - 1,
students_on_campus(PrevMonth, PrevStudents),
TotalStudents is PrevStudents * 2.
% Calculate the additional students at the end of May
additional_students_at_end_of_may(AdditionalStudents) :-
students_on_campus(5, TotalStudents),
AdditionalStudents is TotalStudents - 10.
% Query to calculate the additional students at the end of May
query(AdditionalStudents) :-
additional_students_at_end_of_may(AdditionalStudents).
% Uncomment the following line to run the query and calculate the additional students at the end of May
% ?- query(AdditionalStudents).
%query(AdditionalStudents).