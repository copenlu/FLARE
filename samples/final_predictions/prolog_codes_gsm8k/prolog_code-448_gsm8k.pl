% Predicate to calculate the total number of oranges
total_oranges(Sitti, Juris, TotalOranges) :-
TotalOranges is Sitti + Juris.
% Predicate to calculate the total number of people
total_people(Sitti, Juris, Friends, TotalPeople) :-
TotalPeople is Sitti + Juris + Friends.
% Predicate to calculate the number of oranges each person will get
oranges_per_person(TotalOranges, TotalPeople, OrangesPerPerson) :-
OrangesPerPerson is TotalOranges // TotalPeople.
% Main predicate to calculate the number of oranges each person will get
share_oranges(Sitti, Juris, Friends, OrangesPerPerson) :-
total_oranges(Sitti, Juris, TotalOranges),
total_people(Sitti, Juris, Friends, TotalPeople),
oranges_per_person(TotalOranges, TotalPeople, OrangesPerPerson).
% Query to find out how many oranges each person will get when Sitti has 34 oranges, Juris has 22 oranges, and there are 6 friends
query(OrangesPerPerson) :-
share_oranges(34, 22, 6, OrangesPerPerson).
% Uncomment the following line to run the query
% ?- query(OrangesPerPerson).
%query(OrangesPerPerson).