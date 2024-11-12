% Define prices of fruits
price(peach, 0.5).
price(pear, 0.5).
price(apple, 0.75).
price(kiwi, 1).
price(plum, 0.25).
total_cost(TotalCost) :-
price(peach, PeachPrice),
price(pear, PearPrice),
price(apple, ApplePrice),
price(kiwi, KiwiPrice),
TotalCost is 3 * PeachPrice + 4 * PearPrice + 2 * KiwiPrice + 5 * ApplePrice.
% Calculate remaining budget
remaining_budget(RemainingBudget) :-
total_cost(TotalCost),
InitialBudget = 10,
RemainingBudget is InitialBudget - TotalCost.
% Calculate number of plums Jamaar can buy
plums_to_buy(PlumsToBuy) :-
remaining_budget(RemainingBudget),
price(plum, PlumPrice),
PlumsToBuy is floor(RemainingBudget / PlumPrice).
% Query predicate to find the number of plums Jamaar can buy
query(PlumsToBuy) :-
plums_to_buy(PlumsToBuy).
% Uncomment the line below to run the query
% query(PlumsToBuy).
%query(PlumsToBuy).