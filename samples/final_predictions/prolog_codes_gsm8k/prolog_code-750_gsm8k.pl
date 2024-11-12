% Define Dora's age
doras_age(15).
% Calculate Dora's father's age based on Dora's age
fathers_age(DorasAge, FathersAge) :-
FathersAge is 2 * DorasAge + 8.
% Calculate Dora's mother's age based on Dora's father's age
mothers_age(FathersAge, MothersAge) :-
MothersAge is FathersAge - 4.
% Calculate the total combined age of Dora, her father, and her mother
combined_age(CombinedAge) :-
doras_age(DorasAge),
fathers_age(DorasAge, FathersAge),
mothers_age(FathersAge, MothersAge),
CombinedAge is DorasAge + FathersAge + MothersAge.
% Query predicate to find the total combined age
query(CombinedAge) :-
combined_age(CombinedAge).
% Uncomment the line below to run the query
% query(CombinedAge).
%query(CombinedAge).