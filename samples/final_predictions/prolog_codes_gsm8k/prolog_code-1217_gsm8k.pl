% Define the age difference between John and Jim when Digimon was released
age_difference(JohnAge, JimAge, Difference) :-
JohnAge is 2 * JimAge,
Difference is JohnAge - JimAge.
% Calculate Jim's age when Digimon was released
jims_age_at_release(JohnAge, JimAge) :-
age_difference(JohnAge, JimAge, _).
% Calculate Jim's current age
jims_current_age(JohnAge, JimAge, YearsPassed, JimsCurrentAge) :-
jims_age_at_release(JohnAge, JimAge),
JimsCurrentAge is JimAge + YearsPassed.
% Given information
johns_current_age(28).
years_since_digimon(20).
% Calculate Jim's current age
query(JimsCurrentAge) :-
johns_current_age(JohnAge),
years_since_digimon(YearsPassed),
jims_current_age(JohnAge, JimAge, YearsPassed, JimsCurrentAge).
% Uncomment the following line to run the query
% ?- query(JimsCurrentAge).
%query(JimsCurrentAge).