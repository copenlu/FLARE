% Define the rule to calculate the total matches played in one week
total_matches_played_in_week(TotalMatches) :-
MondayMatches = 2,  % Matches played on Monday
FridayMatches = 1,  % Matches played on Friday
SaturdayMatches = 2 * MondayMatches,  % Matches played on Saturday (double Monday's matches)
TotalMatches is MondayMatches + FridayMatches + SaturdayMatches.  % Total matches in one week
% Query to find the total matches played in one week
query_total_matches_played_in_week(TotalMatches) :-
total_matches_played_in_week(TotalMatches).
% Define a predicate that returns the correct numerical answer when queried
query(TotalMatches) :-
query_total_matches_played_in_week(TotalMatches).
% Uncomment the following line to run the query
% ?- query(TotalMatches).
%query(TotalMatches).