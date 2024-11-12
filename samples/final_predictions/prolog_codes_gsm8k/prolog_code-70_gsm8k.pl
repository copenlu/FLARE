% Define the rule to calculate the number of teachers
calculate_teachers(Girls, Teachers) :-
Boys is Girls * 2,              % Calculate the number of boys based on the given ratio
TotalStudents is Girls + Boys,  % Calculate the total number of students
Teachers is TotalStudents / 5.  % Calculate the number of teachers based on the student-teacher ratio
% Query to find the number of teachers when there are 60 girls
query_number_of_teachers(Teachers) :-
calculate_teachers(60, Teachers).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_number_of_teachers(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).