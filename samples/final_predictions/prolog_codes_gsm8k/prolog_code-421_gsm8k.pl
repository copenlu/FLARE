% Predicate to calculate the total cost of taffy based on the sale offer
total_cost_taffy(Pounds, Cost) :-
Cost is (Pounds * 3) - (Pounds // 2).
% Predicate to calculate the total cost of seashells and magnets
total_cost_seashells_and_magnets(Cost) :-
Cost is 1.50 + (0.25 * 4).
% Predicate to calculate the remaining money after purchases
remaining_money(InitialMoney, TotalCost, Remaining) :-
Remaining is InitialMoney - TotalCost.
% Main predicate to calculate the money Sally has left
sally_money_left(InitialMoney, TaffyPounds, MoneyLeft) :-
total_cost_taffy(TaffyPounds, TaffyCost),
total_cost_seashells_and_magnets(OtherCost),
TotalCost is TaffyCost + OtherCost,
remaining_money(InitialMoney, TotalCost, MoneyLeft).
% Query to find out how much money Sally has left after her purchases
query(MoneyLeft) :-
sally_money_left(10, 2, MoneyLeft).
% Uncomment the following line to run the query
% ?- query(MoneyLeft).
%query(MoneyLeft).