% Define the total number of seats in the auditorium
total_seats(TotalSeats) :-
TotalSeats is 4 * 18.  % Assuming 18 seats in each of the 4 rows
% Define the number of seats occupied by administrators
occupied_by_administrators(AdminSeats, TotalSeats) :-
AdminSeats is TotalSeats // 4.  % One-fourth of the total seats
% Define the number of seats occupied by parents
occupied_by_parents(ParentSeats, RemainingSeats) :-
ParentSeats is RemainingSeats // 3.  % One-third of the remaining seats
% Define the number of seats occupied by students
occupied_by_students(StudentSeats, RemainingSeats) :-
StudentSeats is RemainingSeats - StudentSeats.
% Query to find the number of students in the auditorium
query_number_of_students(StudentSeats) :-
total_seats(TotalSeats),
occupied_by_administrators(AdminSeats, TotalSeats),
RemainingSeats is TotalSeats - AdminSeats,
occupied_by_parents(ParentSeats, RemainingSeats),
occupied_by_students(StudentSeats, RemainingSeats).
% Define a predicate that returns the correct numerical answer when queried
query(NumberOfStudents) :-
query_number_of_students(NumberOfStudents).
% Uncomment the following line to run the query
% ?- query(NumberOfStudents).
%query(NumberOfStudents).