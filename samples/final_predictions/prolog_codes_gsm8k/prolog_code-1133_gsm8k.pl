% Define the rule to calculate the final cut length
final_cut_length(TotalLength, NumParts, NumSubparts, FinalCutLength) :-
PartLength is TotalLength / NumParts,         % Calculate the length of each part
SubpartLength is PartLength / NumSubparts,    % Calculate the length of each subpart within one part
FinalCutLength is SubpartLength.              % Final length of each cut
% Query to find the length of each final cut
query_final_cut_length(FinalCutLength) :-
final_cut_length(100, 4, 5, FinalCutLength).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_final_cut_length(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).