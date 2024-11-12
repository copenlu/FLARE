% Define the rule to calculate the total cost of repaving a street
total_cost(Length, Cost) :-
Cost is Length * 194.
% Calculate the total cost for Monica's street (150 meters)
monica_cost(150, MonicaTotalCost) :-
total_cost(150, MonicaTotalCost).
% Calculate the total cost for Lewis' street (490 meters)
lewis_cost(490, LewisTotalCost) :-
total_cost(490, LewisTotalCost).
% Define the rule to find the cost difference between Lewis' and Monica's streets
cost_difference(Difference) :-
monica_cost(150, MonicaTotalCost),
lewis_cost(490, LewisTotalCost),
Difference is LewisTotalCost - MonicaTotalCost.
% Query to find the cost difference between repaving Lewis' and Monica's streets
query(Difference) :-
cost_difference(Difference).
% Uncomment the following line to run the query
% ?- query(Difference).
%query(Difference).