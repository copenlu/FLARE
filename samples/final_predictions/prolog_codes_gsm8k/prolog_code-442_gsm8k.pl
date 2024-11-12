% Predicate for the cost of the skipping rope
cost_skipping_rope(6).
% Predicate for the cost of the board game
cost_board_game(11).
% Predicate for the cost of the playground ball
cost_playground_ball(2).
% Predicate to calculate the total cost of all items
total_cost(TotalCost) :-
cost_skipping_rope(SkippingRopeCost),
cost_board_game(BoardGameCost),
cost_playground_ball(BallCost),
TotalCost is SkippingRopeCost + BoardGameCost + BallCost.
% Predicate to calculate the total money Dora has
total_money_saved(Saved, Mother, TotalMoney) :-
TotalMoney is Saved + Mother.
% Predicate to calculate the money needed to buy all items
money_needed(TotalCost, TotalMoney, MoneyNeeded) :-
MoneyNeeded is TotalCost - TotalMoney.
% Main predicate to calculate how much more money Dora needs
dora_money_needed(Saved, Mother, MoneyNeeded) :-
total_cost(TotalCost),
total_money_saved(Saved, Mother, TotalMoney),
money_needed(TotalCost, TotalMoney, MoneyNeeded).
% Query to find out how much more money Dora needs to buy all items
query(MoneyNeeded) :-
dora_money_needed(2, 16, MoneyNeeded).
% Uncomment the following line to run the query
% ?- query(MoneyNeeded).
%query(MoneyNeeded).