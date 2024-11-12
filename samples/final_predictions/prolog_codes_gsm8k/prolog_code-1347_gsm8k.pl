% Define a predicate to calculate the current age of James based on John's age
current_age_james(JohnsAge, JamesAge) :-
JamesAge is JohnsAge - 19.
% Define a predicate to calculate the current age of Dora
current_age_dora(DoraAge) :-
DoraAge is 12 - 3.
% Define a predicate to calculate the current age of John's youngest son
current_age_youngest_son(JohnsAge, YoungestSonAge) :-
YoungestSonAge is JohnsAge - 32.
% Define a predicate to calculate the age of a person in 3 years
age_in_3_years(CurrentAge, AgeIn3Years) :-
AgeIn3Years is CurrentAge + 3.
% Define a query predicate to find out the age of John's youngest son in 3 years
query(YoungestSonAgeIn3Years) :-
% John's current age is assumed to be 35
current_age_youngest_son(35, CurrentAge),
age_in_3_years(CurrentAge, YoungestSonAgeIn3Years).
% Uncomment the line below to run the query in SWI-Prolog
% query(YoungestSonAgeIn3Years).
%query(YoungestSonAgeIn3Years).