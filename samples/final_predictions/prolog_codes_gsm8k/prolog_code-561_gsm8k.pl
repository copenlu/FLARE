% Define the base case for the first round where Ali contacts 3 families
families_notified(1, 3).
% Define the recursive case for subsequent rounds
families_notified(Round, Total) :-
Round > 1,
PrevRound is Round - 1,
families_notified(PrevRound, PrevTotal),
Total is PrevTotal * 3.
% Query predicate to find the number of families notified during the fourth round
query(NumFamilies) :-
families_notified(4, NumFamilies).
% Uncomment the line below to run the query
% ?- query(NumFamilies).
%query(NumFamilies).