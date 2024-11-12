% Define costs of items
item_cost(taco_salad, 10).
item_cost(hamburger, 5).
item_cost(fries, 2.5).
item_cost(lemonade, 2).
% Calculate total cost of an item type
total_item_cost(Item, Quantity, TotalCost) :-
item_cost(Item, CostPerItem),
TotalCost is CostPerItem * Quantity.
% Calculate the total bill and how much each friend pays
calculate_bill(NumFriends, EachPays) :-
total_item_cost(taco_salad, 1, TotalTacoSalad),
total_item_cost(hamburger, 5, TotalHamburgers),
total_item_cost(fries, 4, TotalFries),
total_item_cost(lemonade, 5, TotalLemonade),
TotalBill is TotalTacoSalad + TotalHamburgers + TotalFries + TotalLemonade,
EachPays is TotalBill / NumFriends.
% Query to calculate how much each of the five friends has to pay
query(EachPays) :-
calculate_bill(5, EachPays).
% Uncomment the following line to run the query and calculate the payment per friend
% ?- query(EachPays).
%query(EachPays).