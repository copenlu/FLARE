% Define the rule to calculate the remaining amount of money after buying bagels
calculate_remaining_money(InitialMoney, BagelsPurchased, CostPerBagel, RemainingMoney) :-
TotalCost is BagelsPurchased * CostPerBagel,
RemainingMoney is InitialMoney - TotalCost.
% Predicate to run the query with specific values
query(RemainingMoney) :-
calculate_remaining_money(23, 5, 3, RemainingMoney).
% Uncomment the line below to run the query in SWI-Prolog
% ?- query(RemainingMoney).
%query(RemainingMoney).