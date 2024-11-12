% Define the total cost of fair tickets
total_cost_tickets(3, TicketCost) :-
TicketCost is 20.25.
% Define the amount spent on food
food_cost(TicketCost, FoodCost) :-
FoodCost is TicketCost - 4.50.
% Define the total cost of rides
total_cost_rides(2, RideCost, TotalRideCost) :-
TotalRideCost is 2 * RideCost.
% Define the total amount spent
total_amount_spent(TicketCost, FoodCost, TotalRideCost, TotalAmount) :-
TotalAmount is TicketCost + FoodCost + TotalRideCost.
% Define the amount each friend paid
amount_each_friend_paid(TotalAmount, NumFriends, AmountPerFriend) :-
AmountPerFriend is TotalAmount / NumFriends.
% Define a query predicate to find out how much each friend paid
query(AmountPerFriend) :-
total_cost_tickets(3, TicketCost),  % 3 tickets for $20.25
food_cost(TicketCost, FoodCost),    % Food cost $4.50 less than tickets
total_cost_rides(2, 33, TotalRideCost),  % 2 rides at $33 each
total_amount_spent(TicketCost, FoodCost, TotalRideCost, TotalAmount),  % Total amount spent
amount_each_friend_paid(TotalAmount, 3, AmountPerFriend).  % Split evenly among 3 friends
% Uncomment the line below to run the query in SWI-Prolog
% query(AmountPerFriend).
%query(AmountPerFriend).