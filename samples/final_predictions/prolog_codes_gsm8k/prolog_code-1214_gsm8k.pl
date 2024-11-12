% Define the total slices needed by Kate's friends
total_slices_needed(CheeseSlicesPerPizza, PepperoniSlicesPerPizza, CheeseSlicesPerFriend, PepperoniSlicesPerFriend, TotalCheeseSlicesNeeded, TotalPepperoniSlicesNeeded) :-
TotalCheeseSlicesNeeded is 6 * 6 * CheeseSlicesPerFriend,
TotalPepperoniSlicesNeeded is 6 * 4 * PepperoniSlicesPerFriend.
% Define the calculation for the number of pizza pies needed
calculate_pizza_pies(CheeseSlicesPerPizza, PepperoniSlicesPerPizza, TotalCheeseSlicesNeeded, TotalPepperoniSlicesNeeded, TotalPiesNeeded) :-
TotalPiesNeeded is ceil(TotalCheeseSlicesNeeded / CheeseSlicesPerPizza) + ceil(TotalPepperoniSlicesNeeded / PepperoniSlicesPerPizza).
% Main predicate to compute the number of pizza pies Kate needs to buy
calculate_pizza_quantity(TotalPiesNeeded) :-
% Constants
CheeseSlicesPerPizza = 12,
PepperoniSlicesPerPizza = 8,
CheeseSlicesPerFriend = 6,
PepperoniSlicesPerFriend = 4,
% Calculate total slices needed
total_slices_needed(CheeseSlicesPerPizza, PepperoniSlicesPerPizza, CheeseSlicesPerFriend, PepperoniSlicesPerFriend, TotalCheeseSlicesNeeded, TotalPepperoniSlicesNeeded),
% Calculate total pizza pies needed
calculate_pizza_pies(CheeseSlicesPerPizza, PepperoniSlicesPerPizza, TotalCheeseSlicesNeeded, TotalPepperoniSlicesNeeded, TotalPiesNeeded).
% Query predicate to get the total number of pizza pies needed
query(TotalPiesNeeded) :-
calculate_pizza_quantity(TotalPiesNeeded).
% Uncomment the following line to run the query
% query(TotalPiesNeeded).
%query(TotalPiesNeeded).