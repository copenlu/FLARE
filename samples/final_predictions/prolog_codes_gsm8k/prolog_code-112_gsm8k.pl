% Define constants
gas_price_per_gallon(3.00).
cashback_per_gallon(0.20).
total_gallons(10).
% Calculate total cost of gas
total_cost_of_gas(TotalCost) :-
gas_price_per_gallon(Price),
total_gallons(Gallons),
TotalCost is Price * Gallons.
% Calculate total cashback reward
total_cashback_reward(TotalCashback) :-
cashback_per_gallon(Cashback),
total_gallons(Gallons),
TotalCashback is Cashback * Gallons.
% Calculate final cost after cashback rewards
final_cost_after_cashback(FinalCost) :-
total_cost_of_gas(TotalCost),
total_cashback_reward(TotalCashback),
FinalCost is TotalCost - TotalCashback.
% Query to calculate the final cost after cashback rewards for buying 10 gallons of gas
query(FinalCost) :-
final_cost_after_cashback(FinalCost).
% Uncomment the following line to run the query and calculate the final cost after cashback rewards
% ?- query(FinalCost).
%query(FinalCost).