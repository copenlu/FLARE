% Define the prices of each item
aquarium_price(10.00).
rocks_price(2.50).
coral_price(2.00).
fish_price(0.50).
fish_food_price(2.00).
% Define the rule to calculate the total amount spent
total_spent(TotalSpent) :-
aquarium_price(AquariumPrice),
rocks_price(RocksPrice),
coral_price(CoralPrice),
fish_price(FishPrice),
fish_food_price(FishFoodPrice),
TotalSpent is AquariumPrice + 2*RocksPrice + 3*CoralPrice + 20*FishPrice + FishFoodPrice.
% Query to find out how much Scarlett spent
query(TotalSpent) :-
total_spent(TotalSpent).
% Uncomment the following line to run the query
% ?- query(TotalSpent).
%query(TotalSpent).