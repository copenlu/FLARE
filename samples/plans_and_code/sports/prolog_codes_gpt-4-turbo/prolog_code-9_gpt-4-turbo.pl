% Define a fact for each player's free throw performance
% free_throw_performance(Player, Made, Attempted).
free_throw_performance(jamal_murray, 10, 10). % Assumed atom/predicate
free_throw_performance(lebron_james, 7, 10). % Assumed atom/predicate
free_throw_performance(stephen_curry, 9, 9). % Assumed atom/predicate
% Define a rule to check if a player was perfect from the line
perfect_from_line(Player) :-
free_throw_performance(Player, Made, Attempted),
Made == Attempted.
% Query to check if Jamal Murray was perfect from the line
query :- perfect_from_line(jamal_murray).
% Uncomment the following line to run the query
% ?- query.
% ?- query.