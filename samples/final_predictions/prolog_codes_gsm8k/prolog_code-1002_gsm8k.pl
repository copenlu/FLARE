% Define the rule to calculate the price of the red car
calculate_red_car_price(BlueCarPrice, RedCarPrice) :-
RedCarPrice is BlueCarPrice - (0.4 * BlueCarPrice).
% Define the rule to calculate the total cost of both cars
total_cost(BlueCarPrice, RedCarPrice, TotalCost) :-
TotalCost is BlueCarPrice + RedCarPrice.
% Given price of the blue car
BlueCarPrice = 100,
% Calculate the price of the red car
calculate_red_car_price(BlueCarPrice, RedCarPrice),
% Calculate the total cost of both cars
total_cost(BlueCarPrice, RedCarPrice, TotalCost).
% Predicate to encapsulate the entire calculation and output the total cost
calculate_total_cost(TotalCost) :-
BlueCarPrice = 100,  % Assumed atom/predicate
calculate_red_car_price(BlueCarPrice, RedCarPrice),
total_cost(BlueCarPrice, RedCarPrice, TotalCost).
% Query to find the total cost of both cars
query(TotalCost) :-
calculate_total_cost(TotalCost).
% Uncomment the following line to run the query
% ?- query(TotalCost).
%query(TotalCost).