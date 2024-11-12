% Define the rule to calculate the total number of calls in a week
total_calls_in_week(TotalCalls) :-
WorkTimePerDay is 6 * 60, % 6 hours in minutes
TimePerCall is 15, % 15 minutes per call
CallsPerDay is WorkTimePerDay // TimePerCall, % Number of calls per day
TotalCalls is CallsPerDay * 5. % Total calls in a week
% Query to find the total number of calls in a week
query_total_calls_in_week(TotalCalls) :-
total_calls_in_week(TotalCalls).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_total_calls_in_week(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).