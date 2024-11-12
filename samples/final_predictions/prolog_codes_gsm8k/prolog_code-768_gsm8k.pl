% Define the rule to calculate the number of additional groups needed
additional_groups_needed(TotalStudents, InitialGroups, CurrentGroups, AdditionalGroups) :-
InitialGroupSize is TotalStudents / InitialGroups,  % Calculate initial group size
CurrentGroupSize is TotalStudents / CurrentGroups,  % Calculate current group size
DifferenceGroupSize is InitialGroupSize - CurrentGroupSize,  % Calculate difference in group size
AdditionalGroups is TotalStudents / DifferenceGroupSize.  % Calculate additional groups needed
% Query to find the number of additional groups needed
query(AdditionalGroups) :-
additional_groups_needed(54, 6, 12, AdditionalGroups).
% Uncomment the line below to run the query
% ?- query(AdditionalGroups).
%query(AdditionalGroups).