% Define current ages of Darrell and Allen
current_ages(DarrellAge, AllenAge) :-
TotalAge is 162,
DarrellAge is TotalAge * (11 / (7 + 11)),  % Assumed ratio of 7:11
AllenAge is TotalAge * (7 / (7 + 11)).
% Define Allen's age 10 years from now
allen_age_in_10_years(AllenAgeNow, AllenAgeFuture) :-
AllenAgeFuture is AllenAgeNow + 10.
% Predicate to encapsulate the entire calculation and output Allen's age 10 years from now
calculate_allens_age_in_10_years(AllenAgeFuture) :-
current_ages(_, AllenAge),
allen_age_in_10_years(AllenAge, AllenAgeFuture).
% Query to find Allen's age 10 years from now
query(AllenAgeFuture) :-
calculate_allens_age_in_10_years(AllenAgeFuture).
% Uncomment the following line to run the query
% ?- query(AllenAgeFuture).
%query(AllenAgeFuture).