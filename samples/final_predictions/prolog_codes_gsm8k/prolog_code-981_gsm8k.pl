% Define Shawna's age based on Aliya's age
age_of_shawna(ShawnaAge, AliyaAge) :-
ShawnaAge is 3 * AliyaAge.
% Define Shawna's father's age based on Shawna's age
age_of_father(ShawnaAge, FatherAge) :-
FatherAge is 5 * ShawnaAge.
% Calculate Shawna's father's age based on the given information
calculate_fathers_age(FatherAge) :-
age_of_shawna(ShawnaAge, 3),  % Aliya's age is given as 3
age_of_father(ShawnaAge, FatherAge).
% Query to find Shawna's father's age
query(FatherAge) :-
calculate_fathers_age(FatherAge).
% Uncomment the following line to run the query
% ?- query(FatherAge).
%query(FatherAge).