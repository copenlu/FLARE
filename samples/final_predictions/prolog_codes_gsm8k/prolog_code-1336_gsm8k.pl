% Define the rule for calculating the enrollment difference
enrollment_difference(NormanEnrollment, ButlerRatio, EnrollmentDifference) :-
ButlerEnrollment is NormanEnrollment * ButlerRatio,
EnrollmentDifference is NormanEnrollment - ButlerEnrollment.
% Define a predicate to execute the specific query with given values
query(EnrollmentDifference) :-
% Norman High School enrolls 4000 students and Butler High enrolls 3/4 as many
enrollment_difference(4000, 3/4, EnrollmentDifference).
% Uncomment the line below to run the query
% ?- query(EnrollmentDifference).
%query(EnrollmentDifference).