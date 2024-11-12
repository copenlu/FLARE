% Define the rule to calculate the number of times Peter can go to the movies
times_to_movies(Budget, CostPerVisit, Times) :-
TotalCostPerVisit is CostPerVisit * 2, % Calculate the total cost per visit (ticket + popcorn)
Times is Budget // TotalCostPerVisit. % Calculate the number of times Peter can go to the movies
% Query to find the number of times Peter can go to the movies with a budget of $42
query_times_to_movies(Times) :-
times_to_movies(42, 14, Times).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_times_to_movies(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).