% Define the assumptions for the problem
people(20). % Assumed total number of people
drinks_per_seat(2). % Assumed number of drinks per seat
snacks_per_seat(3). % Assumed number of snacks per seat
cost_per_item(2). % Assumed cost per drink/snack
% Define a rule to calculate the total cost of drinks and snacks
total_cost(People, DrinksPerSeat, SnacksPerSeat, CostPerItem, TotalCost) :-
TotalSeats is People,
TotalDrinks is TotalSeats * DrinksPerSeat,
TotalSnacks is TotalSeats * SnacksPerSeat,
TotalItems is TotalDrinks + TotalSnacks,
TotalCost is TotalItems * CostPerItem.
% Query predicate to find the total cost of drinks and snacks
query(TotalCost) :-
people(People),
drinks_per_seat(DrinksPerSeat),
snacks_per_seat(SnacksPerSeat),
cost_per_item(CostPerItem),
total_cost(People, DrinksPerSeat, SnacksPerSeat, CostPerItem, TotalCost).
% Uncomment the line below to run the query
% query(TotalCost).
%query(TotalCost).