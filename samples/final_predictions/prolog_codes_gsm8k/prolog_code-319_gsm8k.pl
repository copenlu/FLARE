% Define the daily_consumption predicate to calculate the total daily consumption for each group
daily_consumption(GroupSize, EggsPerPerson, TotalEggs) :-
TotalEggs is GroupSize * EggsPerPerson.
% Define the weekly_consumption predicate to calculate the total number of eggs consumed in a week
weekly_consumption(TotalEggs) :-
daily_consumption(3, 3, EggsGroup1),  % First group: 3 people, 3 eggs/person
daily_consumption(2, 2, EggsGroup2),  % Second group: 2 people, 2 eggs/person
TotalEggs is EggsGroup1 + EggsGroup2.
% Query predicate to run the program and get the result
query(TotalEggs) :-
weekly_consumption(TotalEggs).
% Uncomment the following line to run the query
% ?- query(TotalEggs).
%query(TotalEggs).