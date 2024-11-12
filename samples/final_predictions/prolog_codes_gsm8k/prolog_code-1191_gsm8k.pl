% Define the relationship between Geb's age and Haley's age
calculate_geb_age(HaleyAge, GebAge) :-
GebAge is (HaleyAge / 2) - 10.
% Given age of Haley
haley_age(26).
% Calculate Geb's age based on Haley's age
calculate_geb_age_from_haley_age(GebAge) :-
haley_age(HaleyAge),
calculate_geb_age(HaleyAge, GebAge).
% Query to find Geb's age
query(GebAge) :-
calculate_geb_age_from_haley_age(GebAge).
% Uncomment the following line to run the query
% ?- query(GebAge).
%query(GebAge).