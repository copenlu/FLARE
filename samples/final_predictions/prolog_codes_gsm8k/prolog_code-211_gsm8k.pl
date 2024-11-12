% Define a predicate to calculate the average score
average_score(Scores, Average) :-
exclude(min_member, Scores, WithoutMin),
sum_list(WithoutMin, Sum),
length(WithoutMin, Count),
Average is Sum / Count.
% Define a predicate to find the lowest score
lowest_score(Scores, Lowest) :-
min_list(Scores, Lowest).
% Define a predicate to calculate the score needed on the sixth test
score_needed(Scores, TargetAverage, ScoreNeeded) :-
average_score(Scores, CurrentAverage),
lowest_score(Scores, Lowest),
SumWithoutLowest is sum_list(Scores) - Lowest,
ScoreNeeded is (6 * TargetAverage) - SumWithoutLowest.
% Brinley's current scores
Scores = [89, 71, 92, 100, 86].
% Calculate the score needed on the sixth test
query(ScoreNeeded) :-
score_needed(Scores, 93, ScoreNeeded).
% Uncomment the following line to run the query
% ?- query(ScoreNeeded).
%query(ScoreNeeded).