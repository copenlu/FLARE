% Define Grace's weight
grace_weight(125).
% Calculate Alex's weight based on the given relationship
alex_weight(AlexWeight) :-
grace_weight(GraceWeight),
AlexWeight is 4 * GraceWeight - 2.
% Calculate the combined weight of Grace and Alex
combined_weight(CombinedWeight) :-
grace_weight(GraceWeight),
alex_weight(AlexWeight),
CombinedWeight is GraceWeight + AlexWeight.
% Query to find the combined weight of Grace and Alex
query(CombinedWeight) :-
combined_weight(CombinedWeight).
% Uncomment the following line to run the query and calculate the combined weight
% ?- query(CombinedWeight).
%query(CombinedWeight).