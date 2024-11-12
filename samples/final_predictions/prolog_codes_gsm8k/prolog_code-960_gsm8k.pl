% Define the rule to calculate the total hay needed
total_hay_needed(TotalHay) :-
Goats = 15,  % Assumed number of goats
Sheep = 12,  % Assumed number of sheep
GoatHay is Goats * 5,  % Calculate total hay needed for goats
SheepHay is Sheep * (2 * 5 - 3),  % Calculate total hay needed for sheep
TotalHay is GoatHay + SheepHay.  % Calculate total hay needed for all livestock
% Query to find the total amount of hay needed
query_total_hay_needed(TotalHay) :-
total_hay_needed(TotalHay).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_total_hay_needed(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).