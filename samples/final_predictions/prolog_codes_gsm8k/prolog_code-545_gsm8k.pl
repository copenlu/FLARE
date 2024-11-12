% Define the predicate to calculate Jame's current age
jame_age(CurrentAge) :-
CurrentAge is 27 - 5.
% Define the predicate to calculate Jame's cousin's age in 8 years
cousin_age(JameAge, CousinAge) :-
CousinAge is 2 * (JameAge + 8) - 5.
% Define the predicate to calculate the age difference between Jame and his cousin currently
age_difference(JameAge, CousinAge, Difference) :-
Difference is abs(JameAge - CousinAge).
% Query predicate to run the program and get the result
query(Difference) :-
jame_age(Jame),
cousin_age(Jame, Cousin),
age_difference(Jame, Cousin, Difference).
% Uncomment the following line to run the query
% ?- query(Difference).
%query(Difference).