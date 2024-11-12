% Define the cost per mile and monthly bonus as constants
cost_per_mile(2).
monthly_bonus(150).
% Define a predicate to calculate the total distance John travels in a year
total_distance_per_year(TotalDistance) :-
TotalDistance is 60 * 5 * 50.
% Define a predicate to calculate the total cost for driving in a year
total_cost_per_year(TotalCost) :-
cost_per_mile(CostPerMile),
monthly_bonus(Bonus),
total_distance_per_year(Distance),
TotalCost is CostPerMile * Distance + Bonus * 12.
% Query predicate to run the program and get the result
query(TotalCost) :-
total_cost_per_year(TotalCost).
% Uncomment the following line to run the query
% ?- query(TotalCost).
%query(TotalCost).