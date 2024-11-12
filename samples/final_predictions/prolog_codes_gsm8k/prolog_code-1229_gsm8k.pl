% Define a predicate to calculate the amount of root beer each person had during the party
root_beer_per_person(InitialAmount, GallonsConsumedByChildren, GallonsSpilledByWife, GallonsTakenByFriend, TotalPeople, AmountPerPerson) :-
% Calculate the remaining amount after each deduction
RemainingAfterChildren is InitialAmount - GallonsConsumedByChildren,
RemainingAfterWife is RemainingAfterChildren - GallonsSpilledByWife,
RemainingAfterFriend is RemainingAfterWife - GallonsTakenByFriend,
% Calculate the amount each person had during the party
AmountPerPerson is RemainingAfterFriend / TotalPeople.
% Define a query predicate to find out the amount of root beer each person had during the party
query(AmountPerPerson) :-
% Initial amount of 24 gallons, deductions by children, wife, and friend, shared by 4 people
root_beer_per_person(24, 4, 7, 5, 4, AmountPerPerson).
% Uncomment the line below to run the query in SWI-Prolog
% query(AmountPerPerson).
%query(AmountPerPerson).