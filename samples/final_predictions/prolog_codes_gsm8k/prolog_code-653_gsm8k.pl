% Define the rule to calculate the distances run by Reggie and Lynn
distance_run(ReggieDistance, LynnDistance) :-
PaisleyDistance = 4,                    % Assumed atom/predicate: Paisley ran 4 miles
ReggieDistance is PaisleyDistance * 5,  % Reggie ran 5 times what Paisley ran
LynnDistance is ReggieDistance - 3.     % Lynn ran 3 miles less than Reggie
% Query to find the distance Lynn ran
query_lynn_distance(LynnDistance) :-
distance_run(_, LynnDistance).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_lynn_distance(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).