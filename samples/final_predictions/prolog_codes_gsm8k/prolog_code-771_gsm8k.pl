% Facts
monthly_electricity_bill(100).  % Assumed monthly electricity bill amount
number_of_roommates(5).         % Assumed number of roommates
% Define the rule to calculate the electricity cost per roommate per year
electricity_cost_per_roommate(CostPerRoommate) :-
monthly_electricity_bill(MonthlyBill),
number_of_roommates(Roommates),
TotalAnnualCost is MonthlyBill * 12,
CostPerRoommate is TotalAnnualCost / Roommates.
% Query predicate to find the electricity cost per roommate per year
query(CostPerRoommate) :-
electricity_cost_per_roommate(CostPerRoommate).
% Uncomment the line below to run the query
% ?- query(CostPerRoommate).
%query(CostPerRoommate).