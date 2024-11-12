% Define Raymond's current age based on the age difference with Samantha
raymond_age_difference(SamanthaAge, RaymondAge) :-
RaymondAge is SamanthaAge + 6.
% Define Raymond's son's age at birth
son_age_at_birth(RaymondAge, SonAgeAtBirth) :-
SonAgeAtBirth is 23.
% Define how many years ago Raymond's son was born
years_ago_son_born(RaymondAge, SonAgeAtBirth, YearsAgo) :-
YearsAgo is RaymondAge - SonAgeAtBirth.
% Predicate to encapsulate the entire calculation and output the number of years ago Raymond's son was born
calculate_years_ago(YearsAgo) :-
raymond_age_difference(31, RaymondAge),  % Samantha's age is given as 31
son_age_at_birth(RaymondAge, SonAgeAtBirth),
years_ago_son_born(RaymondAge, SonAgeAtBirth, YearsAgo).
% Query to find out how many years ago Raymond's son was born
query(YearsAgo) :-
calculate_years_ago(YearsAgo).
% Uncomment the following line to run the query
% ?- query(YearsAgo).
%query(YearsAgo).