% Define Shiloh's current age
shiloh_age(44).
% Define the nephew's current age based on the age difference
nephew_age(N) :-
shiloh_age(ShilohAge),
N is ShilohAge - 7.
% Define the age difference between Shiloh and his nephew
age_difference(D) :-
shiloh_age(ShilohAge),
nephew_age(N),
D is ShilohAge - N.
% Define the future age comparison where Shiloh will be three times as old as his nephew in 7 years
future_age_comparison(N) :-
nephew_age(N),
shiloh_age(ShilohAge),
ShilohAge + 7 is 3 * (N + 7).
% Query predicate to find the current age of Shiloh's nephew
query(N) :-
nephew_age(N).
% Uncomment the line below to run the query
% ?- query(N).
%query(N).