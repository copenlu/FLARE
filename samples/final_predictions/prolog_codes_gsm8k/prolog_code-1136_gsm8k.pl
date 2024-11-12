% Define the cost of pots and garden soil, and the coupon discount
cost(pots, 19).
cost(garden_soil, 26).
coupon_discount(7).
% Define the predicate to calculate the total amount spent
total_spent(Total) :-
cost(pots, PotsCost),  % Get the cost of pots
cost(garden_soil, SoilCost),  % Get the cost of garden soil
coupon_discount(Discount),  % Get the coupon discount
Total is PotsCost + SoilCost - Discount.  % Calculate the total amount spent
% Query predicate to run the program and get the result
query(Total) :-
total_spent(Total).
% Uncomment the following line to run the query
% ?- query(Total).
%query(Total).