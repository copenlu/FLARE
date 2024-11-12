% Define the number of students who exited through exit A
students_exit_A(TotalStudents, ExitA) :-
ExitA is round(0.3 * TotalStudents).
% Define the number of students who exited through exit B
students_exit_B(RemainingStudents, ExitB) :-
ExitB is round((3/5) * RemainingStudents).
% Define the number of students who exited through exit C
students_exit_C(RemainingStudents, ExitC) :-
ExitC is RemainingStudents.
% Calculate the number of students who exited through exit C
calculate_exit_C(TotalStudents, ExitC) :-
students_exit_A(TotalStudents, ExitA),
RemainingAfterA is TotalStudents - ExitA,
students_exit_B(RemainingAfterA, ExitB),
RemainingAfterB is RemainingAfterA - ExitB,
students_exit_C(RemainingAfterB, ExitC).
% Query predicate to run the program and get the result
query(ExitC) :-
calculate_exit_C(1000, ExitC).
% Uncomment the following line to run the query
% ?- query(ExitC).
%query(ExitC).