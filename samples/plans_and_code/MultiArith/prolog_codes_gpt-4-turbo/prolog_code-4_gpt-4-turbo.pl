% Define the rule to calculate the dog's age in six years
dog_age_in_six_years(BrotherAgeInSixYears, DogAgeInSixYears) :-
BrotherCurrentAge is BrotherAgeInSixYears - 6,  % Calculate the current age of the brother
DogCurrentAge is BrotherCurrentAge / 4,         % Calculate the dog's current age based on the brother's current age
DogAgeInSixYears is DogCurrentAge + 6.          % Calculate the dog's age in six years
% Query to find the dog's age in six years when the brother's age in six years is 30
query_dog_age_in_six_years(DogAgeInSixYears) :-
dog_age_in_six_years(30, DogAgeInSixYears).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_dog_age_in_six_years(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).