% Calculate initial cost per balloon
calculate_cost_per_balloon(TotalCost, NumBalloons, CostPerBalloon) :-
CostPerBalloon is TotalCost / NumBalloons.
% Calculate total cost after price increase
calculate_total_cost_after_increase(NumBalloons, InitialCostPerBalloon, PriceIncrease, TotalCost) :-
NewCostPerBalloon is InitialCostPerBalloon + PriceIncrease,
TotalCost is NumBalloons * NewCostPerBalloon.
% Calculate Bentley's payment
calculate_bentley_payment(NumBalloons, TotalCost, BentleyPayment) :-
BentleyPayment is NumBalloons * TotalCost.
% Given values
TotalCostInitial = 900,
NumBalloonsInitial = 20,
PriceIncrease = 20,
NumBalloonsBentley = 170.
% Calculate initial cost per balloon
calculate_cost_per_balloon(TotalCostInitial, NumBalloonsInitial, InitialCostPerBalloon),
% Calculate total cost after price increase
calculate_total_cost_after_increase(NumBalloonsBentley, InitialCostPerBalloon, PriceIncrease, TotalCostAfterIncrease),
% Calculate Bentley's payment
calculate_bentley_payment(NumBalloonsBentley, TotalCostAfterIncrease, BentleyPayment).
% Query to calculate Bentley's payment for filling 170 balloons after the price increase
query(BentleyPayment) :-
calculate_bentley_payment(170, TotalCostAfterIncrease, BentleyPayment).
% Uncomment the following line to run the query and calculate Bentley's payment
% ?- query(BentleyPayment).
%query(BentleyPayment).