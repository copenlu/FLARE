% Define the predicate to calculate the number of new arms grown over a given number of days
new_arms(Days, NewArms) :-
NewArms is Days // 3.
% Define the predicate to calculate the number of new legs grown over a given number of days
new_legs(Days, NewLegs) :-
NewLegs is Days // 5.
% Define the predicate to calculate the total number of new limbs grown over fifteen days
total_new_limbs(TotalLimbs) :-
new_arms(15, Arms),  % Calculate new arms grown in 15 days
new_legs(15, Legs),  % Calculate new legs grown in 15 days
TotalLimbs is Arms + Legs.  % Calculate total new limbs grown
% Query predicate to run the program and get the result
query(TotalLimbs) :-
total_new_limbs(TotalLimbs).
% Uncomment the following line to run the query
% ?- query(TotalLimbs).
%query(TotalLimbs).