% Define the age relationships based on the given information
age_relationships(Jessa, Joan, Mary) :-
Jessa is 20,
Joan is Jessa + 5,
Mary is Joan - 2.
% Define the rule to calculate the sum of the ages
sum_of_ages(Jessa, Joan, Mary, Sum) :-
Sum is Jessa + Joan + Mary.
% Query predicate to run the program and get the result
query(Sum) :-
age_relationships(Jessa, Joan, Mary),
sum_of_ages(Jessa, Joan, Mary, Sum).
% Uncomment the following line to run the query
% ?- query(Sum).
%query(Sum).