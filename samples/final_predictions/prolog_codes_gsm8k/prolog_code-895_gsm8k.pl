% Define the predicate to calculate the total cost of purchasing bolts
% Params: Bolts, CostPerBolt, TotalCost
total_cost(Bolts, CostPerBolt, TotalCost) :-
TotalCost is Bolts * CostPerBolt.
% Define the predicate to calculate the remaining money after purchasing bolts
% Params: InitialMoney, TotalCost, RemainingMoney
remaining_money(InitialMoney, TotalCost, RemainingMoney) :-
RemainingMoney is InitialMoney - TotalCost.
% Given values
Bolts = 16,  % Number of bolts
CostPerBolt = 0.03,  % Cost per bolt in dollars
InitialMoney = 12.48.  % Initial amount of money in dollars
% Calculate the total cost of purchasing the bolts
total_cost(Bolts, CostPerBolt, TotalCost),
% Calculate the remaining money after purchasing the bolts
remaining_money(InitialMoney, TotalCost, RemainingMoney).
% Query predicate to get the remaining money
query(RemainingMoney) :-
remaining_money(InitialMoney, TotalCost, RemainingMoney).
% Uncomment the following line to run the query
% query(RemainingMoney).
%query(RemainingMoney).