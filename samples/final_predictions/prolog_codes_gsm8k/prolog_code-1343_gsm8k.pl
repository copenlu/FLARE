% Define the rule for calculating the total line needed and additional line required
total_line_needed(DockLength, LineRatio, NewLineAvailable, AdditionalLineRequired) :-
TotalLineNeeded is DockLength * LineRatio,
AdditionalLineRequired is TotalLineNeeded - NewLineAvailable.
% Define a predicate to execute the specific query with given values
query(AdditionalLineRequired) :-
total_line_needed(200, 3, 6, AdditionalLineRequired).
% Uncomment the line below to run the query
% ?- query(AdditionalLineRequired).
%query(AdditionalLineRequired).