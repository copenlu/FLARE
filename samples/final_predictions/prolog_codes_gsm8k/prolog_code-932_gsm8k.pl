% Define the rule to calculate Adam's age in eight years
adam_age_in_eight_years(DuncanCurrentAge, AdamAgeInEightYears) :-
DuncanAgeEightYearsAgo is DuncanCurrentAge - 8,  % Calculate Duncan's age eight years ago
AdamAgeFourYearsAgo is DuncanAgeEightYearsAgo / 2,  % Calculate Adam's age four years ago based on the relationship
AdamCurrentAge is AdamAgeFourYearsAgo + 4,  % Calculate Adam's current age
AdamAgeInEightYears is AdamCurrentAge + 8.  % Calculate Adam's age in eight years
% Query to find Adam's age in eight years when Duncan's current age is 60
query_adam_age_in_eight_years(AdamAgeInEightYears) :-
adam_age_in_eight_years(60, AdamAgeInEightYears).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_adam_age_in_eight_years(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).