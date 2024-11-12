% Facts representing group members and their genders
group_member('ABBA', 'Björn', male).
group_member('ABBA', 'Benny', male).
group_member('ABBA', 'Agnetha', female).
group_member('ABBA', 'Anni-Frid', female).
group_member('The Mamas & The Papas', 'John', male).
group_member('The Mamas & The Papas', 'Denny', male).
group_member('The Mamas & The Papas', 'Cass', female).
group_member('The Mamas & The Papas', 'Michelle', female).
% Predicate to count the number of members of a specific gender in a group
count_gender(Group, Gender, Count) :-
findall(Name, group_member(Group, Name, Gender), Members),
length(Members, Count).
% Predicate to check if two groups have a similar gender configuration
similar_gender_config(Group1, Group2) :-
count_gender(Group1, male, MaleCount1),
count_gender(Group1, female, FemaleCount1),
count_gender(Group2, male, MaleCount2),
count_gender(Group2, female, FemaleCount2),
MaleCount1 == MaleCount2,
FemaleCount1 == FemaleCount2.
% Query predicate to find all similar gender configurations
query :- similar_gender_config('ABBA', 'The Mamas & The Papas').
%query.