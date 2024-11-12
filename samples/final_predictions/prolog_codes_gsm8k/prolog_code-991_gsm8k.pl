% Define the rule for calculating total age of all family members
total_age(NaniAge, BrotherAge, SisterAge, TotalAge) :-
BrotherAge is 2 * NaniAge,
SisterAge is NaniAge - (0.25 * NaniAge),
TotalAge is NaniAge + BrotherAge + SisterAge.
% Predicate to encapsulate the entire calculation and output the total age
calculate_total_age(TotalAge) :-
total_age(8, BrotherAge, SisterAge, TotalAge).  % Nani's age is given as 8
% Query to find the total age of all family members
query(TotalAge) :-
calculate_total_age(TotalAge).
% Uncomment the following line to run the query
% ?- query(TotalAge).
%query(TotalAge).