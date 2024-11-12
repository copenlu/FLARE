% Define initial values
students(30).
pencils_per_student(10).
% Calculate total number of pencils at the beginning of the year
total_pencils_at_start(TotalPencils) :-
students(NumStudents),
pencils_per_student(PencilsPerStudent),
TotalPencils is NumStudents * PencilsPerStudent.
% Calculate number of pencils used after two months
pencils_used_after_two_months(UsedPencils) :-
total_pencils_at_start(TotalPencils),
UsedPencils is TotalPencils / 5.
% Calculate number of pencils remaining after two months
pencils_remaining_after_two_months(RemainingPencils) :-
total_pencils_at_start(TotalPencils),
pencils_used_after_two_months(UsedPencils),
RemainingPencils is TotalPencils - UsedPencils.
% Calculate number of pencils left at the end of the year
pencils_left_at_end_of_year(PencilsLeft) :-
pencils_remaining_after_two_months(RemainingPencils),
PencilsLeft is RemainingPencils / 3.
% Query to calculate the number of pencils left at the end of the year
query(PencilsLeft) :-
pencils_left_at_end_of_year(PencilsLeft).
% Uncomment the following line to run the query and calculate the number of pencils left
% ?- query(PencilsLeft).
%query(PencilsLeft).