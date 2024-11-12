% Define the cost of each pack and the values of the valuable and average cards
pack_cost(1800).
valuable_card_1(4000).
valuable_card_2(1000).
average_cards_count(30).
average_card_value(50).
% Calculate the total cost of the packs
total_cost_packs(PackCost, TotalCost) :-
TotalCost is PackCost * 3.
% Calculate the total value of all the cards
total_value_cards(ValuableCard1, ValuableCard2, AverageCardsCount, AverageCardValue, TotalValue) :-
TotalValue is ValuableCard1 + ValuableCard2 + (AverageCardsCount * AverageCardValue).
% Calculate the profit made by Mark
profit_made(PackCost, ValuableCard1, ValuableCard2, AverageCardsCount, AverageCardValue, Profit) :-
total_cost_packs(PackCost, TotalCost),
total_value_cards(ValuableCard1, ValuableCard2, AverageCardsCount, AverageCardValue, TotalValue),
Profit is TotalValue - TotalCost.
% Query predicate to find the profit made by Mark
query(Profit) :-
pack_cost(PackCost),
valuable_card_1(ValuableCard1),
valuable_card_2(ValuableCard2),
average_cards_count(AverageCardsCount),
average_card_value(AverageCardValue),
profit_made(PackCost, ValuableCard1, ValuableCard2, AverageCardsCount, AverageCardValue, Profit).
% Uncomment the line below to run the query
% query(Profit).
%query(Profit).