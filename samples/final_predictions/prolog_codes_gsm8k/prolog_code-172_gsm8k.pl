% Define a predicate to calculate the sum of ages in 2 years
age_sum_in_2_years(SethAge, BrookeAge, Sum) :-
Sum is (SethAge + 2) + (BrookeAge + 2).
% Define a predicate to solve for Seth's age based on the given information
solve_age(SethAge, BrookeAge) :-
BrookeAge is SethAge / 2,  % Brooke's age is half of Seth's age
age_sum_in_2_years(SethAge, BrookeAge, 28).  % Sum of ages in 2 years is 28
% Define a query predicate to find out Seth's age
query(SethAge) :-
solve_age(SethAge, _).  % Query to find Seth's age
% Uncomment the line below to run the query in SWI-Prolog
% ?- query(SethAge).
%query(SethAge).