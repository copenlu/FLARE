% Define the rule for calculating the number of pink candies
calculate_pink_candies(Red, Orange, Yellow, TotalCandies, Pink) :-
Orange is Red * 2,
Yellow is Red / 2,
Pink is TotalCandies - Red - Orange - Yellow.
% Define a predicate to execute the specific query with given values
query(Pink) :-
calculate_pink_candies(54, Orange, Yellow, 232, Pink).
% Uncomment the line below to run the query
% ?- query(Pink).
%query(Pink).