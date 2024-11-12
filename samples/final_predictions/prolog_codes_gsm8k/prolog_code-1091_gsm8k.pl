% Define a predicate to calculate the total sum of scores
% Params: Sum
total_sum_of_scores(Sum) :-
Sum is 100 + 100 + 100 + 80.
% Define a predicate to calculate the average score
% Params: Average
average_score(Average) :-
total_sum_of_scores(Total),
Average is Total / 4.
% Main predicate to compute John's average score across the four tests
% Params: Average
calculate_average_score(Average) :-
average_score(Average).
% Query predicate to get John's average score
query(Average) :-
calculate_average_score(Average).
% Uncomment the following line to run the query
% ?- query(Average).
%query(Average).