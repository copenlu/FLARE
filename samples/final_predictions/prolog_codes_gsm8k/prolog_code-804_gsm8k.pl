% Define car's fuel efficiency and gas price
car_efficiency(10). % 10 MPG
gas_price(3). % $3/gallon
% Calculate weekly fuel cost
calculate_weekly_fuel_cost(OneWayDistance, Workdays, WeeklyCost) :-
car_efficiency(Efficiency),
gas_price(Price),
WeeklyDistance is OneWayDistance * 2 * Workdays,
GasConsumed is WeeklyDistance / Efficiency,
WeeklyCost is GasConsumed * Price.
% Query to calculate Andy's weekly fuel cost for commuting to work
query(WeeklyCost) :-
calculate_weekly_fuel_cost(5, 5, WeeklyCost). % One-way distance 5 miles, 5 workdays
% Uncomment the following line to run the query and calculate Andy's weekly fuel cost
% ?- query(WeeklyCost).
%query(WeeklyCost).