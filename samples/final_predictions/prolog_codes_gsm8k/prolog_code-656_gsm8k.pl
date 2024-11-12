% Define the cost of each additional feature
cost_king_cab(7500).
cost_leather_seats(LeatherSeatsCost) :- cost_king_cab(KingCabCost), LeatherSeatsCost is KingCabCost / 3.
cost_running_boards(RunningBoardsCost) :- cost_leather_seats(LeatherSeatsCost), RunningBoardsCost is LeatherSeatsCost - 500.
cost_exterior_light_package(1500).
% Define the rule to calculate the total cost of the truck
total_cost(BasePrice, TotalCost) :-
cost_king_cab(KingCabCost),
cost_leather_seats(LeatherSeatsCost),
cost_running_boards(RunningBoardsCost),
cost_exterior_light_package(ExteriorLightPackageCost),
TotalCost is BasePrice + KingCabCost + LeatherSeatsCost + RunningBoardsCost + ExteriorLightPackageCost.
% Query to find the total cost of Bill's new truck
query(TotalCost) :-
total_cost(30000, TotalCost).
% Uncomment the following line to run the query
% ?- query(TotalCost).
%query(TotalCost).