% Define the total number of cherry tomatoes consumed per week
total_tomatoes_per_week(SteveTomatoes, GirlfriendTomatoes, TotalTomatoes) :-
SteveTomatoes is 6 * 7, % Steve eats 6 tomatoes per day
GirlfriendTomatoes is SteveTomatoes / 2, % Girlfriend eats half as much as Steve
TotalTomatoes is SteveTomatoes + GirlfriendTomatoes.
% Define the number of vines needed
vines_needed(TotalTomatoes, TomatoesPerVine, Vines) :-
Vines is ceil(TotalTomatoes / (TomatoesPerVine * 7)). % Calculate the number of vines needed, rounding up
% Predicate to encapsulate the entire calculation and output the number of vines needed
calculate_vines_needed(Vines) :-
total_tomatoes_per_week(SteveTomatoes, _, TotalTomatoes), % Assumed atom/predicate: GirlfriendTomatoes is not needed
vines_needed(TotalTomatoes, 3, Vines). % Assumed atom/predicate: TomatoesPerVine is 3
% Query to find the number of vines needed
query(Vines) :-
calculate_vines_needed(Vines).
% Uncomment the following line to run the query
% ?- query(Vines).
%query(Vines).