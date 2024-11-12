% Define the initial funds Jayden had and Ava's allowance
% Assumed atom/predicate: Ava's allowance is known to be $90
initial_funds(70).  % Assumed initial funds Jayden had
% Calculate the additional money needed to buy the camera
money_needed_to_buy_camera(MoneyNeeded) :-
initial_funds(JaydenInitialFunds),
AvaAllowance is 90,  % Assumed Ava's allowance
CameraCost is 200,
TotalMoney is JaydenInitialFunds + (AvaAllowance / 2),
MoneyNeeded is CameraCost - TotalMoney.
% Query predicate to find the additional money needed to buy the camera
query(MoneyNeeded) :-
money_needed_to_buy_camera(MoneyNeeded).
% Uncomment the line below to run the query
% query(MoneyNeeded).
%query(MoneyNeeded).