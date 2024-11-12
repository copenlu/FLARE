% Define the total_weight_lost predicate to calculate the total weight lost over 3 months
total_weight_lost(TotalLost) :-
TotalLost is 10 * 3.  % Assumed weight loss of 10 pounds per month for 3 months
% Define the initial_weight predicate to calculate Mark's initial weight
initial_weight(FinalWeight, TotalLost, InitialWeight) :-
InitialWeight is FinalWeight + TotalLost.
% Query predicate to run the program and get the result
query(InitialWeight) :-
total_weight_lost(TotalLost),
initial_weight(70, TotalLost, InitialWeight).
% Uncomment the following line to run the query
% ?- query(InitialWeight).
%query(InitialWeight).