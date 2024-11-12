% Define the rule to calculate the number of chips each family member will receive
chips_per_person(TotalChips, FamilyMembers, ChipsPerPerson) :-
TotalChips is 2 * 55, % Two bags of chips with 55 chips each
ChipsPerPerson is TotalChips / FamilyMembers.
% Query to find the number of chips each family member will receive
query_chips_per_person(ChipsPerPerson) :-
chips_per_person(110, 5, ChipsPerPerson).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_chips_per_person(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).