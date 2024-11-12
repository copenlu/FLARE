% Define the rule to calculate the number of boys in each class
boys_in_class(TotalStudents, BoysInClass) :-
GirlsInClass is 0.4 * TotalStudents,  % Calculate the number of girls in each class
BoysInClass is TotalStudents - GirlsInClass.  % Calculate the number of boys in each class
% Query to find the number of boys in each class when the total number of students is 80
query_boys_in_class(BoysInClass) :-
TotalStudents is 80,  % Assumed total number of students
ClassStudents is TotalStudents / 2,  % Calculate the number of students in each class
boys_in_class(ClassStudents, BoysInClass).  % Calculate the number of boys in each class
% Define a predicate that returns the correct numerical answer when queried
query(BoysInClass) :-
query_boys_in_class(BoysInClass).
% Uncomment the following line to run the query
% ?- query(BoysInClass).
%query(BoysInClass).