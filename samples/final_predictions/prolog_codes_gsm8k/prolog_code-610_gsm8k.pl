% Define the rule to calculate Jerry's age in 3 years
jerry_age_in_three_years(CurrentAge, AgeInThreeYears) :-
CurrentAge is 2 * (CurrentAge - 5),  % Calculate Jerry's current age based on the given relationship
AgeInThreeYears is CurrentAge + 3.  % Calculate Jerry's age in 3 years
% Query to find Jerry's age in 3 years
query_jerry_age_in_three_years(AgeInThreeYears) :-
jerry_age_in_three_years(CurrentAge, AgeInThreeYears).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_jerry_age_in_three_years(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).