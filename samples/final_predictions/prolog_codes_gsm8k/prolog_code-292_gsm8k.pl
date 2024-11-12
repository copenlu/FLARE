% Define the predicate to calculate Ann's age
% Assumed atom: Ann's age is 9 years
anns_age(9).
% Define the predicate to calculate the brother's age
% Assumed predicate: Brother's age is twice Ann's age
brothers_age(BrothersAge) :-
anns_age(AnnsAge),
BrothersAge is 2 * AnnsAge.
% Define the predicate to calculate the brother's age in 3 years
% Assumed atom: Number of years to add is 3
brothers_age_in_3_years(BrothersAgeIn3Years) :-
brothers_age(BrothersAge),
BrothersAgeIn3Years is BrothersAge + 3.
% Main predicate to compute the brother's age in 3 years
% Assumed atom: Number of years to add is 3
calculate_brothers_age_in_3_years(BrothersAgeIn3Years) :-
brothers_age_in_3_years(BrothersAgeIn3Years).
% Query predicate to get the brother's age in 3 years
query(BrothersAgeIn3Years) :-
calculate_brothers_age_in_3_years(BrothersAgeIn3Years).
% Uncomment the following line to run the query
% query(BrothersAgeIn3Years).
%query(BrothersAgeIn3Years).