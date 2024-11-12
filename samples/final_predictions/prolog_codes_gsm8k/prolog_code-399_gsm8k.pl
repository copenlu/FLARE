% Predicate to calculate the total cost for Dasha to ride all 9 rides
total_cost_dasha(RideCost) :-
RideCost is 9 * 2 * 2. % 9 rides * 2 tickets per ride * $2 per ticket
% Predicate to calculate the cost for David to buy the ride bracelet
cost_david(RideBraceletCost) :-
RideBraceletCost is 30.
% Predicate to calculate the money saved by David
money_saved(DashaCost, DavidCost, Savings) :-
Savings is DashaCost - DavidCost.
% Main predicate to calculate the money saved by David
calculate_savings(Savings) :-
total_cost_dasha(DashaCost),
cost_david(DavidCost),
money_saved(DashaCost, DavidCost, Savings).
% Query to find out how much money David saves by buying the ride bracelet
query(Savings) :-
calculate_savings(Savings).
% Uncomment the following line to run the query
% ?- query(Savings).
%query(Savings).