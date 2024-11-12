% Define the enrollment_increase predicate to calculate the increase in enrollment based on a percentage
enrollment_increase(InitialEnrollment, Increase) :-
Increase is InitialEnrollment * 0.20.  % Assuming a 20% increase
% Define the total_enrollment predicate to calculate the total enrollment for this year
total_enrollment(InitialEnrollment, Total) :-
enrollment_increase(InitialEnrollment, Increase),
Total is InitialEnrollment + Increase.
% Query predicate to run the program and get the result
query(TotalEnrollment) :-
total_enrollment(50, TotalEnrollment).  % Initial enrollment is 50 students
% Uncomment the following line to run the query
% ?- query(TotalEnrollment).
%query(TotalEnrollment).