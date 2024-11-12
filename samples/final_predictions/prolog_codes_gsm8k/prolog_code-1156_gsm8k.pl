% Define predicate to calculate Vince's current age
vince_age(V) :-
LiamAge is 16,  % Liam's current age
LiamAgeTwoYearsAgo is LiamAge - 2,  % Liam's age two years ago
V is (LiamAgeTwoYearsAgo / 2) + 2.  % Vince's current age calculation based on the relationship
% Query predicate to find Vince's current age
query(Vince) :-
vince_age(Vince).
% Uncomment the line below to run the query
% query(Vince).
%query(Vince).