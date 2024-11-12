% Define the proportion of yellow paint in the mural
yellow_proportion(0.5).
% Define the total amount of paint used in the mural
total_paint_used(12).
% Define the equation representing the total amount of paint used
% X + X + X + 0.5 * TotalPaintUsed = 12
% where X represents the amount of red, white, and purple paint used
equation(X) :-
total_paint_used(TotalPaintUsed),
yellow_proportion(YellowProportion),
X is (12 - 0.5 * TotalPaintUsed) / 2.5.
% Predicate to calculate the amount of red paint used
calculate_red_paint_used(RedPaintUsed) :-
equation(X),
RedPaintUsed is X.
% Query predicate to get the amount of red paint used
query(RedPaintUsed) :-
calculate_red_paint_used(RedPaintUsed).
% Uncomment the following line to run the query
% query(RedPaintUsed).
%query(RedPaintUsed).