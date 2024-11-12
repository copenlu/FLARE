% Define the rule to calculate the number of weeks needed to collect the remaining toothpicks
weeks_to_collect_toothpicks(SavedToothpicks, TotalToothpicks, Weeks) :-
RemainingToothpicks is TotalToothpicks - SavedToothpicks,  % Calculate the remaining toothpicks needed
Weeks is RemainingToothpicks / 10.                        % Calculate the number of weeks needed
% Query to find the number of weeks needed to collect the remaining toothpicks
query_weeks_to_collect_toothpicks(Weeks) :-
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_weeks_to_collect_toothpicks(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).