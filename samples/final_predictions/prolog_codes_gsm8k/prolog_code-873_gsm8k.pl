% Define the cost of a green food basket
green_food_cost(25).
% Define the cost of a red food basket and the discount amount
red_food_cost(18, 2).  % Assumed discount of $2 for each red food basket
% Calculate the total cost for purchasing 3 baskets of green and red food
total_cost(Total) :-
green_food_cost(GreenCost),
red_food_cost(RedCost, Discount),
Total is (3 * GreenCost) + (3 * (RedCost - Discount)).
% Query predicate to find the total cost for purchasing 3 baskets of green and red food
query(TotalCost) :-
total_cost(TotalCost).
% Uncomment the line below to run the query
% query(TotalCost).
%query(TotalCost).