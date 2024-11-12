% Define a rule to calculate the cost of Jillian's handbag
calculate_handbag_cost(ShoeCost, HandbagCost) :-
HandbagCost is 3 * ShoeCost - 20.
% Given shoe cost
shoe_cost(80).
% Calculate the handbag cost based on the shoe cost
calculate_handbag_cost(ShoeCost, HandbagCost).
% Query to find out the cost of Jillian's handbag
query(HandbagCost) :-
shoe_cost(ShoeCost),
calculate_handbag_cost(ShoeCost, HandbagCost).
% Uncomment the following line to run the query and calculate the cost of Jillian's handbag
% ?- query(HandbagCost).
%query(HandbagCost).