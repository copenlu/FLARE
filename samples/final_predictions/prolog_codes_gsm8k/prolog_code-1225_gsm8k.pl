% Define predicates for the number of people entering at different times
morning_people(50).  % Assumed atom/predicate
people_at_10_am(40).  % Assumed atom/predicate
lunch_people(PeopleAt10AM * 2).  % Twice the number of people at 10:00
evening_people(MorningPeople * 3).  % Three times the number of people in the morning
% Define a predicate to calculate the total number of people entering the restaurant
total_people(TotalPeople) :-
morning_people(MorningPeople),
people_at_10_am(PeopleAt10AM),
lunch_people(LunchPeople),
evening_people(EveningPeople),
TotalPeople is MorningPeople + PeopleAt10AM + LunchPeople + EveningPeople.
% Define a query predicate to find out the total number of people that entered the restaurant
query(TotalPeople) :-
total_people(TotalPeople).
% Uncomment the line below to run the query in SWI-Prolog
% query(TotalPeople).
%query(TotalPeople).