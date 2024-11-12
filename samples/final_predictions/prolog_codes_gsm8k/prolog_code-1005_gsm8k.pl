% Define the total weight of crawfish caught over three days
total_crawfish_weight(Thursday, Friday, Saturday, TotalWeight) :-
TotalWeight is Thursday + Friday + Saturday.
% Define the rule to calculate the number of servings
calculate_servings(TotalWeight, Servings) :-
Servings is TotalWeight / 3.
% Predicate to encapsulate the entire calculation and output the number of servings
calculate_servings_for_joe(Servings) :-
total_crawfish_weight(3, 3*4, 3*4/2, TotalWeight),  % Weights caught each day
calculate_servings(TotalWeight, Servings).
% Query to find the number of servings Joe has
query(Servings) :-
calculate_servings_for_joe(Servings).
% Uncomment the following line to run the query
% ?- query(Servings).
%query(Servings).