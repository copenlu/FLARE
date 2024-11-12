% Environmental factors
altitude(high).
reflectivity_of_surface(high).
average_sun_exposure_hours(10).
% Personal factors
skin_type(person1, fair).
clothing_coverage(person1, low).
use_of_sunscreen(person1, no).
% Risk assessment rules
sunburn_risk(Person, high) :-
skin_type(Person, fair),
clothing_coverage(Person, low),
use_of_sunscreen(Person, no),
altitude(high),
reflectivity_of_surface(high),
average_sun_exposure_hours(Hours), % Assumed atom/predicate
Hours > 8.
% Preventive measures based on risk
recommended_sunscreen_spf(Person, 50) :-
sunburn_risk(Person, high).
recommended_clothing_coverage(Person, high) :-
sunburn_risk(Person, high).
% Queries
query :-
sunburn_risk(person1, Risk),
recommended_sunscreen_spf(person1, SPF),
recommended_clothing_coverage(person1, Coverage).
%query.