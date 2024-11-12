% Define the rule to calculate the total time spent in 4 weeks
total_time_spent(TotalTime) :-
DailyTotal is 2 + 1,    % Calculate the total time spent in one day
WeeklyTotal is DailyTotal * 3,    % Calculate the total time spent in one week
TotalTime is WeeklyTotal * 4.    % Calculate the total time spent in 4 weeks
query_total_time_spent(TotalTime) :-
total_time_spent(TotalTime).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_total_time_spent(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).