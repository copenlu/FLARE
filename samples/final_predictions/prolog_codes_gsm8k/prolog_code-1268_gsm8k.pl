% Define the rule to calculate the total number of teachers present
total_teachers_present(TotalTeachers) :-
TotalTeachersNotSick is 82 - 13,  % Calculate the number of teachers who were not sick
TotalTeachers is TotalTeachersNotSick + 9.  % Calculate the total number of teachers present
% Query to find the total number of teachers present at school
query_total_teachers_present(TotalTeachers) :-
total_teachers_present(TotalTeachers).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_total_teachers_present(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).