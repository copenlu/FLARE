% Define the relationships between ingredient quantities
ingredient_quantity(zest, Zest).
ingredient_quantity(fragrance, Fragrance) :- Zest is Fragrance.
ingredient_quantity(salt, Salt) :- Sugar is Salt, Oil is 2 * Salt, Salt is 2 * Zest.
% Calculate the total weight in terms of oil
total_weight(Oil) :-
ingredient_quantity(zest, Zest),
ingredient_quantity(fragrance, Fragrance),
ingredient_quantity(salt, Salt),
TotalWeight is Zest + Fragrance + Salt + Salt + Oil,
TotalWeight = 10,
Oil is 2 * Salt.
% Query to find the amount of oil used
query(Oil) :-
total_weight(Oil).
% Uncomment the following line to run the query and calculate the amount of oil used
% ?- query(Oil).
%query(Oil).