% Define the rule to calculate the total number of seashells brought back
calculate_seashells(TotalPeople, GroupSize, Fraction, TotalSeashells) :-
TotalGroups is TotalPeople / GroupSize,
GroupsWithSeashells is Fraction * TotalGroups,
TotalSeashells is GroupsWithSeashells * 2.
% Calculate the total number of seashells brought back for the given scenario
calculate_seashells(90, 9, 3/5, TotalSeashells).
% Query to calculate the total number of seashells brought back
query(TotalSeashells) :-
calculate_seashells(90, 9, 3/5, TotalSeashells).
% Uncomment the following line to run the query and calculate the total number of seashells brought back
% ?- query(TotalSeashells).
%query(TotalSeashells).