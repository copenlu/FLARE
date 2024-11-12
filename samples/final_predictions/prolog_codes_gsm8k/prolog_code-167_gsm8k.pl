% Define the cost of the doll based on the cost of 3 action figures
doll_cost(ActionFigureCost, DollCost) :-
DollCost is 3 * ActionFigureCost.
% Define the cost of one red car
red_car_cost(RedCarCost) :-
RedCarCost is 4.
% Define the total value of all toys in the room
total_toys_value(ActionFigureCost, RedCarCost, DollCost, TotalValue) :-
doll_cost(ActionFigureCost, DollCost),
red_car_cost(RedCarCost),
TotalValue is (5 * RedCarCost) + (3 * ActionFigureCost) + DollCost.
% Query to calculate and return the total value of all toys in the room
query(TotalValue) :-
total_toys_value(5, 4, DollCost, TotalValue).
% Uncomment the following line to run the query and find out the total value of all toys in the room.
% query(TotalValue).
%query(TotalValue).