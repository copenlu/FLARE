% Define the rule to calculate the mean score
mean_score(Scores, Mean) :-
sum_list(Scores, Total),            % Calculate the total sum of scores
length(Scores, NumScores),          % Determine the total number of scores
Mean is Total / NumScores.          % Calculate the mean score
% List of Sally's math quiz scores
sally_scores([50, 80, 80, 60, 40, 90, 100, 70, 60]).
% Query to find Sally's mean score
query_mean_score(Mean) :-
sally_scores(Scores),
mean_score(Scores, Mean).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_mean_score(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).