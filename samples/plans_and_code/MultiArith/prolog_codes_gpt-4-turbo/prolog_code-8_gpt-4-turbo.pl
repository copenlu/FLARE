% Define the number of toys collected from friends
toys_from_friends(75).
% Define the total number of toys donated
total_toys(108).
% Define a rule to calculate the number of toys Joel's sister and Joel contributed
% S is the number of toys Joel's sister contributed
% Joel contributed twice as many toys as his sister (2*S)
calculate_contributions(S, Joel) :-
toys_from_friends(Friends),
Joel is 2 * S,
Total is Friends + S + Joel,
total_toys(Total).
% Predicate to find the number of toys contributed by Joel
find_joels_contribution(Joel) :-
between(1, 108, S),  % Generate possible values for S between 1 and 108
calculate_contributions(S, Joel).
% Driver predicate to query the number of toys Joel contributed
query(Joel) :-
find_joels_contribution(Joel).
% Uncomment the line below to run the query
% ?- query(Joel).
%query(Joel).