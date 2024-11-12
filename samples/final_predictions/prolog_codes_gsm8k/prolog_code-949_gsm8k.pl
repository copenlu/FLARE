% Define the prices of tickets, popcorn, and candy
ticket_price(friday_saturday, 10).
ticket_price(other_days, 7).
popcorn_price(8).
candy_price(2).
% Define the total amount spent on tickets, popcorn, and candy
total_spent(TotalSpent) :-
TotalSpent is (5 * 10) + (8 * 7) + (2 * 8) + (4 * 2).
% Define the remaining budget for movies
remaining_budget(RemainingBudget) :-
total_spent(TotalSpent),
RemainingBudget is 150 - TotalSpent.
% Define the cost of watching a movie based on the day of the week
movie_cost(Day, Cost) :-
(Day = friday ; Day = saturday),
ticket_price(friday_saturday, Cost).
movie_cost(_, Cost) :-
ticket_price(other_days, Cost).
% Define the number of movies Colby can watch on the last day
movies_to_watch(Movies) :-
remaining_budget(RemainingBudget),
movie_cost(friday, FridayCost),
movie_cost(saturday, SaturdayCost),
movie_cost(_, OtherDaysCost),
Movies is floor(RemainingBudget / (FridayCost + SaturdayCost + OtherDaysCost)).
% Query to find the number of movies Colby can watch on the last day
query(Movies) :-
movies_to_watch(Movies).
% Uncomment the line below to run the query
% ?- query(Movies).
%query(Movies).