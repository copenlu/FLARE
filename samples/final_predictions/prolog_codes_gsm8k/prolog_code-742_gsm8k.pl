% Define the number of slices in each pizza
total_slices_per_pizza(12).
% Calculate the total slices consumed by all friends
slices_consumed(TotalSlicesConsumed) :-
% Slices consumed by Bryce and two friends (2/3 of the pizza)
SlicesConsumedBryceAndTwoFriends is 3 * (2/3) * 12,
% Slices consumed by the remaining two friends (3/4 of the pizza)
SlicesConsumedRemainingTwoFriends is 2 * (3/4) * 12,
% Total slices consumed by all friends
TotalSlicesConsumed is SlicesConsumedBryceAndTwoFriends + SlicesConsumedRemainingTwoFriends.
% Calculate the number of slices left after consumption
slices_left(SlicesLeft) :-
total_slices_per_pizza(TotalSlicesPerPizza),
slices_consumed(TotalSlicesConsumed),
% Total number of pizzas ordered by Bryce and his friends
TotalPizzasOrdered is 5,
% Calculate the slices left after consumption
SlicesLeft is TotalPizzasOrdered * TotalSlicesPerPizza - TotalSlicesConsumed.
% Query predicate to find the number of slices left after consumption
query(SlicesLeft) :-
slices_left(SlicesLeft).
% Uncomment the line below to run the query
% query(SlicesLeft).
%query(SlicesLeft).