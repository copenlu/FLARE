% Define the rule to calculate the total time to watch both movies
total_time_to_watch_movies(TotalTime) :-
Movie1Duration = 1*60 + 30, % Duration of the first movie in minutes
Movie2Duration = 2*60 + 5,   % Duration of the second movie in minutes
TotalTime is Movie1Duration + Movie2Duration.
% Query to find the total time to watch both movies
query_total_time_to_watch_movies(TotalTime) :-
total_time_to_watch_movies(TotalTime).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_total_time_to_watch_movies(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).