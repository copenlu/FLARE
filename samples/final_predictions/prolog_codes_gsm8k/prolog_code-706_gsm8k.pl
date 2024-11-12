% Define the total cost of 5 lollipops and 4 candies
total_cost(5, 4, 3.20).
% Calculate the cost of each candy
calculate_candy_cost(CandyCost) :-
total_cost(Lollipops, Candies, TotalCost),
LollipopCost is 0.40,
CandyCost is (TotalCost - (Lollipops * LollipopCost)) / Candies.
% Calculate the total cost of 10 lollipops and 10 candies
calculate_total_cost(TotalCost) :-
LollipopCost is 0.40,
calculate_candy_cost(CandyCost),
TotalCost is (10 * LollipopCost) + (10 * CandyCost).
% Query to calculate the total cost of 10 lollipops and 10 candies
query(TotalCost) :-
calculate_total_cost(TotalCost).
% Uncomment the following line to run the query and calculate the total cost
% ?- query(TotalCost).
%query(TotalCost).