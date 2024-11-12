% Define the rule for calculating the number of movie tickets Ryan can buy
calculate_movie_tickets(WeeksCompleted, IceCreamCost, NumFriends, TicketCost, NumTickets) :-
WeeklyAllowance is 6,
TotalEarnings is WeeklyAllowance * WeeksCompleted,
TotalIceCreamCost is (NumFriends * IceCreamCost),
RemainingAmount is TotalEarnings - TotalIceCreamCost,
NumTickets is RemainingAmount // TicketCost.
% Define a predicate to execute the specific query with given values
query(NumTickets) :-
calculate_movie_tickets(3, 1.25, 4, 6.50, NumTickets).
% Uncomment the line below to run the query
% ?- query(NumTickets).
%query(NumTickets).