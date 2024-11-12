% Define the rule to calculate the difference in drying time between old and new varnish on 6 paintings
drying_time_difference(OldVarnishTime, NewVarnishTime, Difference) :-
TotalOldVarnishTime is OldVarnishTime * 6,    % Calculate total drying time for old varnish on 6 paintings
TotalNewVarnishTime is NewVarnishTime * 6,    % Calculate total drying time for new varnish on 6 paintings
Difference is TotalNewVarnishTime - TotalOldVarnishTime.  % Calculate the difference in drying time
% Query to find the difference in drying time for 6 paintings with old and new varnish
query_drying_time_difference(Difference) :-
drying_time_difference(7, 12, Difference).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_drying_time_difference(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).