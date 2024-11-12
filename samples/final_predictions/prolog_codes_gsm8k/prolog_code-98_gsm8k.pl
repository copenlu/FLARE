% Define total number of Grade 5 students
total_students(200).
% Calculate number of boys and girls
calculate_boys_and_girls(TotalStudents, Boys, Girls) :-
Boys is round(TotalStudents * 2/5),
Girls is TotalStudents - Boys.
% Calculate number of girls in the girl scout
girls_in_scout(Girls, GirlsInScout) :-
GirlsInScout is round(Girls * 2/3).
% Calculate number of girls not in the girl scout
girls_not_in_scout(Girls, GirlsInScout, GirlsNotInScout) :-
GirlsNotInScout is Girls - GirlsInScout.
% Query to find the number of girls not in the girl scout
query(GirlsNotInScout) :-
total_students(Total),
calculate_boys_and_girls(Total, Boys, Girls),
girls_in_scout(Girls, GirlsInScout),
girls_not_in_scout(Girls, GirlsInScout, GirlsNotInScout).
% Uncomment the following line to run the query and calculate the number of girls not in the girl scout
% ?- query(GirlsNotInScout).
%query(GirlsNotInScout).