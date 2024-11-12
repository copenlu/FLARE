% Define the total number of students in the school
TotalStudents is 20 * 3. % Assumed atom
% Define the total number of girls in the school
TotalGirls is 15 + 12. % Assumed atom
% Calculate the total number of boys in the school
TotalBoys is TotalStudents - TotalGirls.
% Calculate the number of boys in each class
BoysPerClass is TotalBoys / 3.
% Calculate the number of boys in the third class
BoysInThirdClass is BoysPerClass - 15 - 12.
% Query predicate to get the number of boys in the third class
query(BoysInThirdClass) :-
BoysInThirdClass is BoysPerClass - 15 - 12.
% Uncomment the following line to run the query
% query(BoysInThirdClass).
%query(BoysInThirdClass).