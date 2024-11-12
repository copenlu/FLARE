% Define the initial amount of money Craig has
initial_money(40).
% Calculate the total expenses from buying squirt guns and water balloons
total_expenses(TotalExpenses) :-
SquirtGunsCost is 6 * 2,  % Cost of 6 squirt guns at $2 each
WaterBalloonsCost is 3 * 3,  % Cost of 3 packs of water balloons at $3 each
TotalExpenses is SquirtGunsCost + WaterBalloonsCost.
% Calculate the money left after deducting total expenses from initial money
money_left(InitialMoney, TotalExpenses, MoneyLeft) :-
MoneyLeft is InitialMoney - TotalExpenses.
% Query predicate to find out how much money Craig has left
query(MoneyLeft) :-
initial_money(InitialMoney),
total_expenses(TotalExpenses),
money_left(InitialMoney, TotalExpenses, MoneyLeft).
% Uncomment the line below to run the query
% query(MoneyLeft).
%query(MoneyLeft).