% Define Harriet's current age
current_age_harriet(21).
% Define Adrian's current age based on the relationship with Harriet
current_age_adrian(HarrietAge, AdrianAge) :-
AdrianAge is 3 * HarrietAge.
% Define Zack's current age based on the relationship with Harriet
current_age_zack(HarrietAge, ZackAge) :-
ZackAge is 2 * HarrietAge.
% Calculate the average age of the three individuals in three years
average_age_in_three_years(HarrietAge, AdrianAge, ZackAge, AverageAge) :-
AverageAge is (HarrietAge + 3 + AdrianAge + 3 + ZackAge + 3) / 3.
% Query predicate to run the program and get the result
query(AverageAge) :-
current_age_harriet(21),
current_age_adrian(21, AdrianAge),
current_age_zack(21, ZackAge),
average_age_in_three_years(21, AdrianAge, ZackAge, AverageAge).
% Uncomment the following line to run the query
% ?- query(AverageAge).
%query(AverageAge).