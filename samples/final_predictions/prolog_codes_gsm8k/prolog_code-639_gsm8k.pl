% Define the rule to calculate Charmaine's age in four years
charmaine_age_in_four_years(CurrentAge, AgeInFourYears) :-
CurrentAge is 16 - 12,          % Calculate Charmaine's current age
AgeInFourYears is CurrentAge + 4.  % Calculate Charmaine's age in four years
% Query to find Charmaine's age in four years
query_charmaine_age_in_four_years(AgeInFourYears) :-
charmaine_age_in_four_years(CurrentAge, AgeInFourYears).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_charmaine_age_in_four_years(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).