% Define the base price and additional costs
base_price(6.50).
extra_meat(2.00).
extra_cheese(1.00).
avocado(1.00).
sauce(0.25).
upgrade(3.00).
gift_card(5.00).
% Calculate the total cost of the burrito order
total_cost(TotalCost) :-
base_price(Base),
extra_meat(Meat),
extra_cheese(Cheese),
avocado(Avocado),
sauce(Sauce),
upgrade(Upgrade),
TotalCost is Base + Meat + Cheese + Avocado + 2*Sauce + Upgrade.
% Calculate how much Chad still owes after applying the gift card
amount_owed(AmountOwed) :-
total_cost(TotalCost),
gift_card(GiftCard),
AmountOwed is TotalCost - GiftCard.
% Query predicate to run the program and get the result
query(AmountOwed) :-
amount_owed(AmountOwed).
% Uncomment the following line to run the query
% ?- query(AmountOwed).
%query(AmountOwed).